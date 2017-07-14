#define  COL8_000000  0
#define  COL8_FF0000  1
#define  COL8_00FF00  2
#define  COL8_FFFF00  3
#define  COL8_0000FF  4
#define  COL8_FF00FF  5
#define  COL8_00FFFF  6
#define  COL8_FFFFFF  7
#define  COL8_C6C6C6  8
#define  COL8_840000  9
#define  COL8_008400  10
#define  COL8_848400  11
#define  COL8_000084  12
#define  COL8_840084  13
#define  COL8_008484  14
#define  COL8_848484  15

#define  PORT_KEYDAT  0x0060
#define  PIC_OCW2     0x20



void io_hlt(void);
void io_cli(void);
void io_out(int port, int data);
int  io_load_eflags(void);
void io_store_eflags(int eflags);
void showFont8(char *vram, int xsize, int x, int y, char c, char* font);
void init_mouse_cursor(char* mouse, char bc);
void putblock(char* vram, int vxsize, int pxsize,int pysize, int px0, int py0, char* buf, int bxsize);
char   charToHexVal(char c);
char*  charToHexStr(unsigned char c);
void showString(char* vram, int xsize, int x, int y, char color, unsigned char *s );





extern char systemFont[16];

static char fontA[16] = {
0x00, 0x18, 0x18, 0x18,0x18,0x24,0x24,0x24,
0x24, 0x7e, 0x42, 0x42,0x42, 0xe7, 0x00, 0x00
};
static char keyval[5] = {'0', 'X', 0, 0, 0};
static char mcursor[256];

struct KEYBUF {
    unsigned char buf[32];
    int next_r, next_w, len;
};

struct FIFO8 {
    unsigned char* buf;
    int p, q, size, free, flags;
};
static struct KEYBUF keybuf;
static struct  FIFO8 mouseinfo;
static char  mousebuf[128];


void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf);
int fifo8_get(struct FIFO8 *fifo);
int fifo8_put(struct FIFO8 *fifo, unsigned char data);
int fifo8_status(struct FIFO8 *fifo);
void  show_mouse_info();
void CMain(void) {
    char*vram = (char*)0xa0000;
    int xsize = 320, ysize = 200;
	int data=0;
    init_palette();
	
	fifo8_init(&mouseinfo, 128, mousebuf);

    boxfill8(vram, xsize, COL8_008484, 0, 0, xsize-1, ysize-29);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-28, xsize-1, ysize-28);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize-27, xsize-1, ysize-27);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-26, xsize-1, ysize-1);

    boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize-24, 59, ysize-24);
    boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize-24, 2, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 3, ysize-4,  59, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 59, ysize-23, 59, ysize-5);
    boxfill8(vram, xsize, COL8_000000, 2, ysize-3, 59, ysize-3);
    boxfill8(vram, xsize, COL8_000000, 60, ysize-24, 60, ysize-3);

    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-24, xsize-4, ysize-24);
    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-23, xsize-47, ysize-4);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-47, ysize-3, xsize-4, ysize-3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-3,  ysize-24, xsize-3, ysize-3);

	//showFont8(vram, xsize, 8, 8, COL8_FFFFFF, systemFont + 'A'*16);
    //showFont8(vram, xsize, 16, 8, COL8_FFFFFF, systemFont + 'B'*16);
    //showFont8(vram, xsize, 24, 8, COL8_FFFFFF, systemFont + 'C'*16);
    //showFont8(vram, xsize, 32, 8, COL8_FFFFFF, systemFont + '1'*16);
    //showFont8(vram, xsize, 40, 8, COL8_FFFFFF, systemFont + '2'*16);
    //showFont8(vram, xsize, 48, 8, COL8_FFFFFF, systemFont + '3'*16);

    init_mouse_cursor(mcursor, COL8_008484);
	putblock(vram, xsize, 16, 16, 80, 80, mcursor, 16);	

	init_keyboard();
	enable_mouse();
	
	//showFont8(vram, xsize, 20, 20, COL8_FFFFFF, fontA);
	for(;;) {
		
		if(keybuf.len>0){
			data=keybuf.buf[keybuf.next_r];
			keybuf.next_r=(keybuf.next_r+1)%32;
			keybuf.len--;
			char* pStr = charToHexStr(data);
			static int showPos = 0;
			showString(vram, xsize, showPos, 0, COL8_FFFFFF, pStr);
	   		showPos +=32;
		}
		else if(fifo8_status(&mouseinfo) != 0){
			io_cli();
			show_mouse_info();
		}

		
	}

}

void init_palette(void) {
    static  unsigned char table_rgb[16 *3] = {
        0x00,  0x00,  0x00,
        0xff,  0x00,  0x00,
        0x00,  0xff,  0x00,
        0xff,  0xff,  0x00,
        0x00,  0x00,  0xff,
        0xff,  0x00,  0xff,
        0x00,  0xff,  0xff,
        0xff,  0xff,  0xff,
        0xc6,  0xc6,  0xc6,
        0x84,  0x00,  0x00,
        0x00,  0x84,  0x00,
        0x84,  0x84,  0x00,
        0x00,  0x00,  0x84,
        0x84,  0x00,  0x84,
        0x00,  0x84,  0x84,
        0x84,  0x84,  0x84,
    };
 
    set_palette(0, 15, table_rgb);
    return;
}

void set_palette(int start,  int end,  unsigned char* rgb) {
    int i, eflags;
    eflags = io_load_eflags();
    io_cli();
    io_out8(0x03c8,  start);  //set  palette number
    for (i = start; i <=end; i++ ) {
        io_out8(0x03c9,  rgb[0]/4 );
        io_out8(0x03c9,  rgb[1]/4);
        io_out8(0x03c9,  rgb[2]/4 );
 
        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}

//xsize 屏幕的长, 其实就是将二维转一维
void boxfill8(unsigned char* vram, int xsize, unsigned char c, 
int x0, int y0, int x1, int y1) {
    int  x, y;
    for (y = y0; y <= y1; y++)
     for (x = x0; x <= x1; x++) {
         vram[y * xsize + x] = c;
     }

}

void showFont8(char *vram, int xsize, int x, int y, char c, char* font) {
    int i;
    char d;

    for (i = 0; i < 16; i++) {
        d = font[i]; 
        if ((d & 0x80) != 0) {vram[(y+i)*xsize + x + 0] = c;}
        if ((d & 0x40) != 0) {vram[(y+i)*xsize + x + 1] = c;}
        if ((d & 0x20) != 0) {vram[(y+i)*xsize + x + 2] = c;}
        if ((d & 0x10) != 0) {vram[(y+i)*xsize + x + 3] = c;}
        if ((d & 0x08) != 0) {vram[(y+i)*xsize + x + 4] = c;}
        if ((d & 0x04) != 0) {vram[(y+i)*xsize + x + 5] = c;}
        if ((d & 0x02) != 0) {vram[(y+i)*xsize + x + 6] = c;}
        if ((d & 0x01) != 0) {vram[(y+i)*xsize + x + 7] = c;}
    }
}

void init_mouse_cursor(char* mouse, char bc) {
    static char cursor[16][16] = {
        "**************..",
        "*OOOOOOOOOOO*...",
        "*OOOOOOOOOO*....",
        "*OOOOOOOOO*.....",
        "*OOOOOOOO*......",
        "*OOOOOOO*.......",
        "*OOOOOOO*.......",
        "*OOOOOOOO*......",
        "*OOOO**OOO*.....",
        "*OOO*..*OOO*....",
        "*OO*....*OOO*...",
        "*O*......*OOO*..",
        "**........*OOO*.",
        "*..........*OOO*",
        "............*OO*",
        ".............***"
    };

      int x, y;
      for (y = 0; y < 16; y++) {
          for (x = 0; x < 16; x++) {
             if (cursor[y][x] == '*') {
                 mouse[y*16 + x] = COL8_000000;
             }
             if (cursor[y][x] == 'O') {
                mouse[y*16 + x] = COL8_FFFFFF;
             }
             if (cursor[y][x] == '.') {
                 mouse[y*16 + x] = bc;
             }
          }
      }
}
void putblock(char* vram, int vxsize, int pxsize,
int pysize, int px0, int py0, char* buf, int bxsize) {
    int x, y;
    for (y = 0; y < pysize; y++)
      for (x = 0; x < pxsize; x++) {
          vram[(py0+y) * vxsize + (px0+x)] = buf[y * bxsize + x];
      }
}

void intHandlerForKeyboard() {
   
    char*vram = (char*)0xa0000;
    int xsize = 320, ysize = 200;

    io_out8(PIC_OCW2, 0x21);
    unsigned char data = 0;
    data = io_in8(PORT_KEYDAT);
	
	if(keybuf.len<32){
		keybuf.buf[keybuf.next_w]=data;
		keybuf.len++;
		keybuf.next_w=(keybuf.next_w+1)%32;	
	}
 	//char* pStr = charToHexStr(data);
	//static int showPos = 0;
    //showString(vram, xsize, showPos, 0, COL8_FFFFFF, pStr);
	//showFont8(vram, xsize, showPos, 0, COL8_FFFFFF, systemFont + 'A'*16);
    //showPos +=32;
   
}
void  show_mouse_info() {

    char*vram = (char*)0xa0000;
    int xsize = 320, ysize = 200;
    unsigned char data = 0;

    io_sti();
    data = fifo8_get(&mouseinfo);
    char* pStr = charToHexStr(data);
    static int mousePosX = 16;
	static int mousePosY = 16;
    //if (mousePos <= 256) 
	{
        showString(vram, xsize, mousePosX, mousePosY, COL8_FFFFFF, pStr);
        mousePosX += 32;
		if(mousePosX>=256){
			mousePosX=16;
			mousePosY+=16;
		
		}
		
    }
}
void intHandlerForMouse(){

    char*vram = (char*)0xa0000;
    int xsize = 320, ysize = 200;
	unsigned char data;

	data = io_in8(PORT_KEYDAT);
    fifo8_put(&mouseinfo, data);

    //showString(vram, xsize, 0, 0, COL8_FFFFFF, "PS/2 Mouse Handler");   
   // for(;;) {
    //    io_hlt();
   // }
}
char   charToHexVal(char c) {
    if (c >= 10) {
        return 'A' + c - 10;
    } 

    return '0' + c;
}
char*  charToHexStr(unsigned char c) {
    int i = 0;
    char mod = c % 16;
    keyval[3] = charToHexVal(mod);
    c = c / 16;
    keyval[2] = charToHexVal(c);

    return keyval;
}
void showString(char* vram, int xsize, int x, int y, char color, unsigned char *s ) {
    for (; *s != 0x00; s++) {
       showFont8(vram, xsize, x, y,color, systemFont+ *s * 16);
       x += 8;
    }
}

#define  PORT_KEYDAT  0x0060
#define  PORT_KEYSTA  0x0064
#define  PORT_KEYCMD  0x0064
#define  KEYSTA_SEND_NOTREADY  0x02
#define  KEYCMD_WRITE_MODE  0x60
#define  KBC_MODE     0x47
void  wait_KBC_sendready() {
    for(;;) {
        if ((io_in8(PORT_KEYSTA) & KEYSTA_SEND_NOTREADY) == 0) {
            break;
        }
    }
}
void init_keyboard(void) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_WRITE_MODE);
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, KBC_MODE);
    return;
}

#define KEYCMD_SENDTO_MOUSE 0xd4
#define MOUSECMD_ENABLE 0xf4

void enable_mouse(void) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_SENDTO_MOUSE);
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, MOUSECMD_ENABLE);
    return;
}

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
    fifo->size = size;
    fifo->buf = buf;
    fifo->free = size;
    fifo->flags = 0;
    fifo->p = 0;
    fifo->q = 0;
    return ;
}

#define FLAGS_OVERRUN 0x0001
int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
    if (fifo->free ==0) {
        fifo->flags |= FLAGS_OVERRUN;
        return -1;
    }

    fifo->buf[fifo->p] = data;
    fifo->p++;
    if (fifo->p == fifo->size) {
        fifo->p = 0;
    }

    fifo->free--;
    return 0;
}

int fifo8_get(struct FIFO8 *fifo) {
    int data;
    if (fifo->free == fifo->size) {
        return -1;
    }

    data = fifo->buf[fifo->q];
    fifo->q++;
    if (fifo->q == fifo->size) {
        fifo->q = 0;
    }

    fifo->free++;
    return data;
}

int fifo8_status(struct FIFO8 *fifo) {
    return fifo->size - fifo->free;
}
