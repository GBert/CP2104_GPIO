# 1 "pic14.c"
# 1 "<Kommandozeile>"
# 1 "pic14.c"
# 33 "pic14.c"
# 1 "k8048.h" 1
# 38 "k8048.h"
# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 324 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 1 3 4
# 325 "/usr/include/features.h" 2 3 4
# 357 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 378 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 379 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 358 "/usr/include/features.h" 2 3 4
# 389 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 5 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 390 "/usr/include/features.h" 2 3 4
# 29 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 213 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 35 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 131 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 132 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef long int __swblk_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;

typedef long int __ssize_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 37 "/usr/include/stdio.h" 2 3 4
# 45 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 65 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 75 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 83 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4

typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 53 "/usr/include/_G_config.h" 3 4
typedef int _G_int16_t __attribute__ ((__mode__ (__HI__)));
typedef int _G_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int _G_uint16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int _G_uint32_t __attribute__ ((__mode__ (__SI__)));
# 33 "/usr/include/libio.h" 2 3 4
# 53 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 54 "/usr/include/libio.h" 2 3 4
# 172 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 182 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 205 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 273 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 321 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 330 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 366 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, __const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 418 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 462 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 492 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 76 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 91 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 103 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;




# 165 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 166 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (__const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (__const char *__old, __const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, __const char *__old, int __newfd,
       __const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) __attribute__ ((__warn_unused_result__));
# 210 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 228 "/usr/include/stdio.h" 3 4
extern char *tempnam (__const char *__dir, __const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 253 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 267 "/usr/include/stdio.h" 3 4






extern FILE *fopen (__const char *__restrict __filename,
      __const char *__restrict __modes) __attribute__ ((__warn_unused_result__));




extern FILE *freopen (__const char *__restrict __filename,
        __const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
# 296 "/usr/include/stdio.h" 3 4

# 307 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, __const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 320 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, __const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      __const char *__restrict __format, ...);




extern int printf (__const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      __const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (__const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       __const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 418 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, __const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, __const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     __const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));




extern int scanf (__const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));

extern int sscanf (__const char *__restrict __s,
     __const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 449 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, __const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                          __attribute__ ((__warn_unused_result__));
extern int scanf (__const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                         __attribute__ ((__warn_unused_result__));
extern int sscanf (__const char *__restrict __s, __const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 469 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));





extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));


extern int vsscanf (__const char *__restrict __s,
      __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 500 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (__const char *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 528 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 556 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 567 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 600 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__));






extern char *gets (char *__s) __attribute__ ((__warn_unused_result__));

# 662 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));








extern int fputs (__const char *__restrict __s, FILE *__restrict __stream);





extern int puts (__const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));




extern size_t fwrite (__const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 734 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t fwrite_unlocked (__const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__));




extern void rewind (FILE *__stream);

# 770 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__));
# 789 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, __const fpos_t *__pos);
# 812 "/usr/include/stdio.h" 3 4

# 821 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));








extern void perror (__const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern __const char *__const sys_errlist[];
# 851 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 870 "/usr/include/stdio.h" 3 4
extern FILE *popen (__const char *__command, __const char *__modes) __attribute__ ((__warn_unused_result__));





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 910 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 934 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     __const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      __const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, __const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 2 - 1,
      __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char *__restrict __s, __const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsprintf_chk (__s, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}



extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, __const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, __const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, __const char *__restrict __fmt, ...)

{
  return __builtin___snprintf_chk (__s, __n, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char *__restrict __s, size_t __n, __const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsnprintf_chk (__s, __n, 2 - 1,
        __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}





extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     __const char *__restrict __format, ...);
extern int __printf_chk (int __flag, __const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      __const char *__restrict __format, __gnuc_va_list __ap);
extern int __vprintf_chk (int __flag, __const char *__restrict __format,
     __gnuc_va_list __ap);


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
fprintf (FILE *__restrict __stream, __const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
printf (__const char *__restrict __fmt, ...)
{
  return __printf_chk (2 - 1, __fmt, __builtin_va_arg_pack ());
}







extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
vprintf (__const char *__restrict __fmt, __gnuc_va_list __ap)
{



  return __vprintf_chk (2 - 1, __fmt, __ap);

}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
vfprintf (FILE *__restrict __stream,
   __const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 2 - 1, __fmt, __ap);
}
# 220 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern char *__gets_chk (char *__str, size_t) __attribute__ ((__warn_unused_result__));
extern char *__gets_warn (char *__str) __asm__ ("" "gets")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("please use fgets or getline instead, gets can't " "specify buffer size")))
                               ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) char *
gets (char *__str)
{
  if (__builtin_object_size (__str, 2 > 1) != (size_t) -1)
    return __gets_chk (__str, __builtin_object_size (__str, 2 > 1));
  return __gets_warn (__str);
}

extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")

                                        __attribute__ ((__warn_unused_result__));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) char *
fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
 return __fgets_chk (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);

      if ((size_t) __n > __builtin_object_size (__s, 2 > 1))
 return __fgets_chk_warn (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
}

extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread")


            __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
}
# 319 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked")


                     __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")))
                                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
  FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_unlocked_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
         __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_unlocked_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
       __stream);
    }
# 372 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
  return __fread_unlocked_alias (__ptr, __size, __n, __stream);
}
# 935 "/usr/include/stdio.h" 2 3 4






# 39 "k8048.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 33 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 325 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 3 4
typedef int wchar_t;
# 34 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 43 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 65 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 61 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 62 "/usr/include/endian.h" 2 3 4
# 66 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 44 "/usr/include/stdlib.h" 2 3 4
# 68 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 96 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 140 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern double atof (__const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern int atoi (__const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern long int atol (__const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





__extension__ extern long long int atoll (__const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern double strtod (__const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern float strtof (__const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern long double strtold (__const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern long int strtol (__const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern unsigned long int strtoul (__const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




__extension__
extern long long int strtoq (__const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

__extension__
extern unsigned long long int strtouq (__const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





__extension__
extern long long int strtoll (__const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

__extension__
extern unsigned long long int strtoull (__const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

# 311 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern long int a64l (__const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 61 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 99 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 116 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 58 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 74 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 92 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 104 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 134 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 148 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 195 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 32 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 35 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
# 45 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 47 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 65 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 97 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 107 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 119 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);





# 1 "/usr/include/x86_64-linux-gnu/bits/select2.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/select2.h" 3 4
extern unsigned long int __fdelt_chk (unsigned long int __d);
extern unsigned long int __fdelt_warn (unsigned long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));
# 130 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 221 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 64 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 224 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


typedef union
{
  char __size[56];
  long int __align;
} pthread_attr_t;



typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 76 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    int __spins;
    __pthread_list_t __list;
# 101 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;
  } __data;
# 187 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 272 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 321 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 25 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 26 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 498 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 531 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
# 554 "/usr/include/stdlib.h" 3 4






extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (__const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




extern char *__secure_getenv (__const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (__const char *__name, __const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (__const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 620 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 642 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 663 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 712 "/usr/include/stdlib.h" 3 4





extern int system (__const char *__command) __attribute__ ((__warn_unused_result__));

# 734 "/usr/include/stdlib.h" 3 4
extern char *realpath (__const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






typedef int (*__compar_fn_t) (__const void *, __const void *);
# 752 "/usr/include/stdlib.h" 3 4



extern void *bsearch (__const void *__key, __const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 771 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));

# 808 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));







extern int mblen (__const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern int mbtowc (wchar_t *__restrict __pwc,
     __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   __const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (__const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 896 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *__const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
# 948 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 3 4
extern char *__realpath_chk (__const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (__const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__))

                                                 __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (__const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__))


                                                __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")))
                                      ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (__const char *__restrict __name, char *__restrict __resolved)
{
  if (__builtin_object_size (__resolved, 2 > 1) != (size_t) -1)
    {




      return __realpath_chk (__name, __resolved, __builtin_object_size (__resolved, 2 > 1));
    }

  return __realpath_alias (__name, __resolved);
}


extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))

     __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")))
                   ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ptsname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ptsname_r_alias (__fd, __buf, __buflen);
}


extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__))
              __attribute__ ((__warn_unused_result__));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char *__s, wchar_t __wchar)
{







  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1 && 16 > __builtin_object_size (__s, 2 > 1))
    return __wctomb_chk (__s, __wchar, __builtin_object_size (__s, 2 > 1));
  return __wctomb_alias (__s, __wchar);
}


extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         __const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, __const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, __const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")))
                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t *__restrict __dst, __const char *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __mbstowcs_chk (__dst, __src, __len,
          __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));

      if (__len > __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t))
 return __mbstowcs_chk_warn (__dst, __src, __len,
         __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));
    }
  return __mbstowcs_alias (__dst, __src, __len);
}


extern size_t __wcstombs_chk (char *__restrict __dst,
         __const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __wcstombs_alias (char *__restrict __dst, __const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __wcstombs_chk_warn (char *__restrict __dst, __const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char *__restrict __dst, __const wchar_t *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __wcstombs_chk (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
      if (__len > __builtin_object_size (__dst, 2 > 1))
 return __wcstombs_chk_warn (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
    }
  return __wcstombs_alias (__dst, __src, __len);
}
# 956 "/usr/include/stdlib.h" 2 3 4
# 964 "/usr/include/stdlib.h" 3 4

# 40 "k8048.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 29 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 35 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest,
       __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, __const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, __const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 95 "/usr/include/string.h" 3 4
extern void *memchr (__const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 126 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, __const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 28 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 163 "/usr/include/string.h" 2 3 4


extern int strcoll_l (__const char *__s1, __const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, __const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (__const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (__const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 210 "/usr/include/string.h" 3 4

# 235 "/usr/include/string.h" 3 4
extern char *strchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 262 "/usr/include/string.h" 3 4
extern char *strrchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 281 "/usr/include/string.h" 3 4



extern size_t strcspn (__const char *__s, __const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 314 "/usr/include/string.h" 3 4
extern char *strpbrk (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 342 "/usr/include/string.h" 3 4
extern char *strstr (__const char *__haystack, __const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, __const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    __const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, __const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 397 "/usr/include/string.h" 3 4


extern size_t strlen (__const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (__const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 427 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 445 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (__const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 489 "/usr/include/string.h" 3 4
extern char *index (__const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 517 "/usr/include/string.h" 3 4
extern char *rindex (__const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 536 "/usr/include/string.h" 3 4
extern int strcasecmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 559 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       __const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 642 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/string3.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/string3.h" 3 4
extern void __warn_memset_zero_len (void) __attribute__((__warning__ ("memset used with constant zero length parameter; this could be due to transposed parameters")))
                                                                                                   ;
# 48 "/usr/include/x86_64-linux-gnu/bits/string3.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memcpy (void *__restrict __dest, __const void *__restrict __src, size_t __len)

{
  return __builtin___memcpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memmove (void *__dest, __const void *__src, size_t __len)
{
  return __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
# 76 "/usr/include/x86_64-linux-gnu/bits/string3.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset (void *__dest, int __ch, size_t __len)
{
  if (__builtin_constant_p (__len) && __len == 0
      && (!__builtin_constant_p (__ch) || __ch != 0))
    {
      __warn_memset_zero_len ();
      return __dest;
    }
  return __builtin___memset_chk (__dest, __ch, __len, __builtin_object_size (__dest, 0));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bcopy (__const void *__src, void *__dest, size_t __len)
{
  (void) __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bzero (void *__dest, size_t __len)
{
  (void) __builtin___memset_chk (__dest, '\0', __len, __builtin_object_size (__dest, 0));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcpy (char *__restrict __dest, __const char *__restrict __src)
{
  return __builtin___strcpy_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}
# 117 "/usr/include/x86_64-linux-gnu/bits/string3.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncpy (char *__restrict __dest, __const char *__restrict __src, size_t __len)

{
  return __builtin___strncpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}


extern char *__stpncpy_chk (char *__dest, __const char *__src, size_t __n,
       size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern char *__stpncpy_alias (char *__dest, __const char *__src, size_t __n) __asm__ ("" "stpncpy") __attribute__ ((__nothrow__ , __leaf__))

                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpncpy (char *__dest, __const char *__src, size_t __n)
{
  if (__builtin_object_size (__dest, 2 > 1) != (size_t) -1
      && (!__builtin_constant_p (__n) || __n <= __builtin_object_size (__dest, 2 > 1)))
    return __stpncpy_chk (__dest, __src, __n, __builtin_object_size (__dest, 2 > 1));
  return __stpncpy_alias (__dest, __src, __n);
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcat (char *__restrict __dest, __const char *__restrict __src)
{
  return __builtin___strcat_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncat (char *__restrict __dest, __const char *__restrict __src, size_t __len)

{
  return __builtin___strncat_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}
# 643 "/usr/include/string.h" 2 3 4




# 41 "k8048.h" 2
# 1 "/usr/include/sysexits.h" 1 3 4
# 42 "k8048.h" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 30 "/usr/include/ctype.h" 3 4

# 48 "/usr/include/ctype.h" 3 4
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 81 "/usr/include/ctype.h" 3 4
extern __const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const));
extern __const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const));
extern __const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const));
# 106 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));








extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));


# 152 "/usr/include/ctype.h" 3 4
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
# 273 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
# 349 "/usr/include/ctype.h" 3 4

# 43 "k8048.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 30 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 39 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 43 "/usr/include/time.h" 2 3 4
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  __const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 180 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   __const char *__restrict __format,
   __const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 217 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     __const char *__restrict __format,
     __const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
# 230 "/usr/include/time.h" 3 4



extern struct tm *gmtime (__const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (__const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (__const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (__const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (__const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (__const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (__const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (__const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (__const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 313 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 328 "/usr/include/time.h" 3 4
extern int nanosleep (__const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, __const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       __const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     __const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
# 417 "/usr/include/time.h" 3 4

# 44 "k8048.h" 2
# 1 "/usr/include/errno.h" 1 3 4
# 32 "/usr/include/errno.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/errno.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 2 3 4
# 5 "/usr/include/linux/errno.h" 2 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/errno.h" 2 3 4
# 47 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 37 "/usr/include/errno.h" 2 3 4
# 59 "/usr/include/errno.h" 3 4

# 45 "k8048.h" 2
# 1 "/usr/include/unistd.h" 1 3 4
# 28 "/usr/include/unistd.h" 3 4

# 203 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 204 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 208 "/usr/include/unistd.h" 2 3 4
# 227 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 228 "/usr/include/unistd.h" 2 3 4
# 256 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 268 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 288 "/usr/include/unistd.h" 3 4
extern int access (__const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 305 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, __const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
# 335 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 354 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) __attribute__ ((__warn_unused_result__));





extern ssize_t write (int __fd, __const void *__buf, size_t __n) __attribute__ ((__warn_unused_result__));
# 377 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) __attribute__ ((__warn_unused_result__));






extern ssize_t pwrite (int __fd, __const void *__buf, size_t __n,
         __off_t __offset) __attribute__ ((__warn_unused_result__));
# 418 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 433 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 445 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 470 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (__const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern int lchown (__const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));






extern int fchownat (int __fd, __const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));



extern int chdir (__const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 512 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 526 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__));




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 544 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (__const char *__path, char *__const __argv[],
     char *__const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *__const __argv[], char *__const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (__const char *__path, char *__const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (__const char *__file, char *__const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (__const char *__file, __const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 599 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 611 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (__const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
# 647 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 673 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
# 690 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 723 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__));




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__));




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__));






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__));




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));
# 779 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));




extern int linkat (int __fromfd, __const char *__from, int __tofd,
     __const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) __attribute__ ((__warn_unused_result__));




extern int symlink (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));




extern ssize_t readlink (__const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));




extern int symlinkat (__const char *__from, int __tofd,
        __const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) __attribute__ ((__warn_unused_result__));


extern ssize_t readlinkat (int __fd, __const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));



extern int unlink (__const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, __const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (__const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (__const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 894 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 59 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 73 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 152 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 895 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (__const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int setdomainname (__const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (__const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (__const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






extern int chroot (__const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern char *getpass (__const char *__prompt) __attribute__ ((__nonnull__ (1)));
# 980 "/usr/include/unistd.h" 3 4
extern int fsync (int __fd);
# 994 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 1018 "/usr/include/unistd.h" 3 4
extern int truncate (__const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 1040 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 1061 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1082 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1105 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) __attribute__ ((__warn_unused_result__));
# 1136 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1165 "/usr/include/unistd.h" 3 4
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));





# 1 "/usr/include/x86_64-linux-gnu/bits/unistd.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/unistd.h" 3 4
extern ssize_t __read_chk (int __fd, void *__buf, size_t __nbytes,
      size_t __buflen) __attribute__ ((__warn_unused_result__));
extern ssize_t __read_alias (int __fd, void *__buf, size_t __nbytes) __asm__ ("" "read")
                               __attribute__ ((__warn_unused_result__));
extern ssize_t __read_chk_warn (int __fd, void *__buf, size_t __nbytes, size_t __buflen) __asm__ ("" "__read_chk")


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("read called with bigger length than size of " "the destination buffer")))
                                  ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
read (int __fd, void *__buf, size_t __nbytes)
{
  if (__builtin_object_size (__buf, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
 return __read_chk (__fd, __buf, __nbytes, __builtin_object_size (__buf, 0));

      if (__nbytes > __builtin_object_size (__buf, 0))
 return __read_chk_warn (__fd, __buf, __nbytes, __builtin_object_size (__buf, 0));
    }
  return __read_alias (__fd, __buf, __nbytes);
}
# 124 "/usr/include/x86_64-linux-gnu/bits/unistd.h" 3 4
extern ssize_t __readlink_chk (__const char *__restrict __path,
          char *__restrict __buf, size_t __len,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlink_alias (__const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlink") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlink_chk_warn (__const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlink_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlink called with bigger length " "than size of destination buffer")))
                                         ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlink (__const char *__restrict __path, char *__restrict __buf, size_t __len)

{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __readlink_chk (__path, __buf, __len, __builtin_object_size (__buf, 2 > 1));

      if ( __len > __builtin_object_size (__buf, 2 > 1))
 return __readlink_chk_warn (__path, __buf, __len, __builtin_object_size (__buf, 2 > 1));
    }
  return __readlink_alias (__path, __buf, __len);
}



extern ssize_t __readlinkat_chk (int __fd, __const char *__restrict __path,
     char *__restrict __buf, size_t __len,
     size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlinkat_alias (int __fd, __const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlinkat") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlinkat_chk_warn (int __fd, __const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlinkat_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlinkat called with bigger " "length than size of destination " "buffer")))

                ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlinkat (int __fd, __const char *__restrict __path, char *__restrict __buf, size_t __len)

{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __readlinkat_chk (__fd, __path, __buf, __len, __builtin_object_size (__buf, 2 > 1));

      if (__len > __builtin_object_size (__buf, 2 > 1))
 return __readlinkat_chk_warn (__fd, __path, __buf, __len,
          __builtin_object_size (__buf, 2 > 1));
    }
  return __readlinkat_alias (__fd, __path, __buf, __len);
}


extern char *__getcwd_chk (char *__buf, size_t __size, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__getcwd_alias (char *__buf, size_t __size) __asm__ ("" "getcwd") __attribute__ ((__nothrow__ , __leaf__))
                                              __attribute__ ((__warn_unused_result__));
extern char *__getcwd_chk_warn (char *__buf, size_t __size, size_t __buflen) __asm__ ("" "__getcwd_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getcwd caller with bigger length than size of " "destination buffer")))
                              ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getcwd (char *__buf, size_t __size)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size))
 return __getcwd_chk (__buf, __size, __builtin_object_size (__buf, 2 > 1));

      if (__size > __builtin_object_size (__buf, 2 > 1))
 return __getcwd_chk_warn (__buf, __size, __builtin_object_size (__buf, 2 > 1));
    }
  return __getcwd_alias (__buf, __size);
}


extern char *__getwd_chk (char *__buf, size_t buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *__getwd_warn (char *__buf) __asm__ ("" "getwd") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("please use getcwd instead, as getwd " "doesn't specify buffer size")))
                                         ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getwd (char *__buf)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    return __getwd_chk (__buf, __builtin_object_size (__buf, 2 > 1));
  return __getwd_warn (__buf);
}


extern size_t __confstr_chk (int __name, char *__buf, size_t __len,
        size_t __buflen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __confstr_alias (int __name, char *__buf, size_t __len) __asm__ ("" "confstr") __attribute__ ((__nothrow__ , __leaf__))
                             ;
extern size_t __confstr_chk_warn (int __name, char *__buf, size_t __len, size_t __buflen) __asm__ ("" "__confstr_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__((__warning__ ("confstr called with bigger length than size of destination " "buffer")))
            ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) confstr (int __name, char *__buf, size_t __len)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __confstr_chk (__name, __buf, __len, __builtin_object_size (__buf, 2 > 1));

      if (__builtin_object_size (__buf, 2 > 1) < __len)
 return __confstr_chk_warn (__name, __buf, __len, __builtin_object_size (__buf, 2 > 1));
    }
  return __confstr_alias (__name, __buf, __len);
}


extern int __getgroups_chk (int __size, __gid_t __list[], size_t __listlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __getgroups_alias (int __size, __gid_t __list[]) __asm__ ("" "getgroups") __attribute__ ((__nothrow__ , __leaf__))
                 __attribute__ ((__warn_unused_result__));
extern int __getgroups_chk_warn (int __size, __gid_t __list[], size_t __listlen) __asm__ ("" "__getgroups_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getgroups called with bigger group count than what " "can fit into destination buffer")))
                                           ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getgroups (int __size, __gid_t __list[])
{
  if (__builtin_object_size (__list, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size) || __size < 0)
 return __getgroups_chk (__size, __list, __builtin_object_size (__list, 2 > 1));

      if (__size * sizeof (__gid_t) > __builtin_object_size (__list, 2 > 1))
 return __getgroups_chk_warn (__size, __list, __builtin_object_size (__list, 2 > 1));
    }
  return __getgroups_alias (__size, __list);
}


extern int __ttyname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ttyname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ttyname_r") __attribute__ ((__nothrow__ , __leaf__))

     __attribute__ ((__nonnull__ (2)));
extern int __ttyname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ttyname_r_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ttyname_r called with bigger buflen than " "size of destination buffer")))
                                  ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ttyname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ttyname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));

      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ttyname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ttyname_r_alias (__fd, __buf, __buflen);
}



extern int __getlogin_r_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nonnull__ (1)));
extern int __getlogin_r_alias (char *__buf, size_t __buflen) __asm__ ("" "getlogin_r")
                     __attribute__ ((__nonnull__ (1)));
extern int __getlogin_r_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getlogin_r_chk")


     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("getlogin_r called with bigger buflen than " "size of destination buffer")))
                                  ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
getlogin_r (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __getlogin_r_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));

      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __getlogin_r_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __getlogin_r_alias (__buf, __buflen);
}




extern int __gethostname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int __gethostname_alias (char *__buf, size_t __buflen) __asm__ ("" "gethostname") __attribute__ ((__nothrow__ , __leaf__))
                   __attribute__ ((__nonnull__ (1)));
extern int __gethostname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__gethostname_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("gethostname called with bigger buflen than " "size of destination buffer")))
                                  ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) gethostname (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __gethostname_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));

      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __gethostname_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __gethostname_alias (__buf, __buflen);
}




extern int __getdomainname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int __getdomainname_alias (char *__buf, size_t __buflen) __asm__ ("" "getdomainname") __attribute__ ((__nothrow__ , __leaf__))

                     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int __getdomainname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getdomainname_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getdomainname called with bigger " "buflen than size of destination " "buffer")))

                    ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getdomainname (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __getdomainname_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));

      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __getdomainname_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __getdomainname_alias (__buf, __buflen);
}
# 1172 "/usr/include/unistd.h" 2 3 4



# 46 "k8048.h" 2
# 1 "/usr/include/signal.h" 1 3 4
# 31 "/usr/include/signal.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 104 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
extern int __sigismember (__const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 34 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;

# 58 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/signum.h" 1 3 4
# 59 "/usr/include/signal.h" 2 3 4
# 79 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 51 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef struct siginfo
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
      } _sifields;
  } siginfo_t;
# 129 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 273 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     void *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 80 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 99 "/usr/include/signal.h" 3 4


extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 113 "/usr/include/signal.h" 3 4

# 126 "/usr/include/signal.h" 3 4
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern void psignal (int __sig, __const char *__s);




extern void psiginfo (__const siginfo_t *__pinfo, __const char *__s);
# 168 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 196 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
# 216 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigismember (__const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 252 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 253 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, __const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));






extern int sigsuspend (__const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, __const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sigwait (__const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (__const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (__const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    __const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, __const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
# 310 "/usr/include/signal.h" 3 4
extern __const char *__const _sys_siglist[65];
extern __const char *__const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 334 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, __const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 2 3 4

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 109 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  unsigned long r8;
  unsigned long r9;
  unsigned long r10;
  unsigned long r11;
  unsigned long r12;
  unsigned long r13;
  unsigned long r14;
  unsigned long r15;
  unsigned long rdi;
  unsigned long rsi;
  unsigned long rbp;
  unsigned long rbx;
  unsigned long rdx;
  unsigned long rax;
  unsigned long rcx;
  unsigned long rsp;
  unsigned long rip;
  unsigned long eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  unsigned long err;
  unsigned long trapno;
  unsigned long oldmask;
  unsigned long cr2;
  struct _fpstate * fpstate;
  unsigned long __reserved1 [8];
};
# 340 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 350 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__));

# 1 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 50 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 357 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 2 3 4
# 33 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
typedef long int greg_t;





typedef greg_t gregset_t[23];
# 94 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    unsigned long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 360 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



extern int sigaltstack (__const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));
# 395 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       __const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
# 396 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));




# 47 "k8048.h" 2
# 1 "/usr/include/search.h" 1 3 4
# 26 "/usr/include/search.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h" 1 3 4
# 27 "/usr/include/search.h" 2 3 4


# 45 "/usr/include/search.h" 3 4
extern void insque (void *__elem, void *__prev) __attribute__ ((__nothrow__ , __leaf__));


extern void remque (void *__elem) __attribute__ ((__nothrow__ , __leaf__));
# 63 "/usr/include/search.h" 3 4
typedef enum
  {
    FIND,
    ENTER
  }
ACTION;

typedef struct entry
  {
    char *key;
    void *data;
  }
ENTRY;


struct _ENTRY;
# 88 "/usr/include/search.h" 3 4
extern ENTRY *hsearch (ENTRY __item, ACTION __action) __attribute__ ((__nothrow__ , __leaf__));


extern int hcreate (size_t __nel) __attribute__ ((__nothrow__ , __leaf__));


extern void hdestroy (void) __attribute__ ((__nothrow__ , __leaf__));
# 119 "/usr/include/search.h" 3 4
typedef enum
{
  preorder,
  postorder,
  endorder,
  leaf
}
VISIT;



extern void *tsearch (__const void *__key, void **__rootp,
        __compar_fn_t __compar);



extern void *tfind (__const void *__key, void *__const *__rootp,
      __compar_fn_t __compar);


extern void *tdelete (__const void *__restrict __key,
        void **__restrict __rootp,
        __compar_fn_t __compar);



typedef void (*__action_fn_t) (__const void *__nodep, VISIT __value,
          int __level);




extern void twalk (__const void *__root, __action_fn_t __action);
# 165 "/usr/include/search.h" 3 4
extern void *lfind (__const void *__key, __const void *__base,
      size_t *__nmemb, size_t __size, __compar_fn_t __compar);



extern void *lsearch (__const void *__key, void *__base,
        size_t *__nmemb, size_t __size, __compar_fn_t __compar);


# 48 "k8048.h" 2

# 1 "/usr/include/x86_64-linux-gnu/sys/time.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/time.h" 2 3 4
# 39 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 57 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 73 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (__const struct timeval *__tv,
    __const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int adjtime (__const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        __const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, __const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 191 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 50 "k8048.h" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/resource.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/resource.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/resource.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/resource.h" 3 4
enum __rlimit_resource
{

  RLIMIT_CPU = 0,



  RLIMIT_FSIZE = 1,



  RLIMIT_DATA = 2,



  RLIMIT_STACK = 3,



  RLIMIT_CORE = 4,






  __RLIMIT_RSS = 5,



  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,




  RLIMIT_AS = 9,



  __RLIMIT_NPROC = 6,



  __RLIMIT_MEMLOCK = 8,



  __RLIMIT_LOCKS = 10,



  __RLIMIT_SIGPENDING = 11,



  __RLIMIT_MSGQUEUE = 12,





  __RLIMIT_NICE = 13,




  __RLIMIT_RTPRIO = 14,





  __RLIMIT_RTTIME = 15,


  __RLIMIT_NLIMITS = 16,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS


};
# 133 "/usr/include/x86_64-linux-gnu/bits/resource.h" 3 4
typedef __rlim_t rlim_t;







struct rlimit
  {

    rlim_t rlim_cur;

    rlim_t rlim_max;
  };
# 160 "/usr/include/x86_64-linux-gnu/bits/resource.h" 3 4
enum __rusage_who
{

  RUSAGE_SELF = 0,



  RUSAGE_CHILDREN = -1
# 178 "/usr/include/x86_64-linux-gnu/bits/resource.h" 3 4
};


# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 182 "/usr/include/x86_64-linux-gnu/bits/resource.h" 2 3 4


struct rusage
  {

    struct timeval ru_utime;

    struct timeval ru_stime;

    long int ru_maxrss;


    long int ru_ixrss;

    long int ru_idrss;

    long int ru_isrss;


    long int ru_minflt;

    long int ru_majflt;

    long int ru_nswap;


    long int ru_inblock;

    long int ru_oublock;

    long int ru_msgsnd;

    long int ru_msgrcv;

    long int ru_nsignals;



    long int ru_nvcsw;


    long int ru_nivcsw;
  };







enum __priority_which
{
  PRIO_PROCESS = 0,

  PRIO_PGRP = 1,

  PRIO_USER = 2

};



# 268 "/usr/include/x86_64-linux-gnu/bits/resource.h" 3 4

# 26 "/usr/include/x86_64-linux-gnu/sys/resource.h" 2 3 4







# 43 "/usr/include/x86_64-linux-gnu/sys/resource.h" 3 4
typedef int __rlimit_resource_t;
typedef int __rusage_who_t;
typedef int __priority_which_t;





extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 70 "/usr/include/x86_64-linux-gnu/sys/resource.h" 3 4
extern int setrlimit (__rlimit_resource_t __resource,
        __const struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 88 "/usr/include/x86_64-linux-gnu/sys/resource.h" 3 4
extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__ , __leaf__));





extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__ , __leaf__));



extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));


# 51 "k8048.h" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctls.h" 1 3 4



# 1 "/usr/include/linux/ioctl.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctl.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 2 3 4
# 5 "/usr/include/linux/ioctl.h" 2 3 4
# 5 "/usr/include/asm-generic/ioctls.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 2 3 4
# 28 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 2 3 4


struct winsize
  {
    unsigned short int ws_row;
    unsigned short int ws_col;
    unsigned short int ws_xpixel;
    unsigned short int ws_ypixel;
  };


struct termio
  {
    unsigned short int c_iflag;
    unsigned short int c_oflag;
    unsigned short int c_cflag;
    unsigned short int c_lflag;
    unsigned char c_line;
    unsigned char c_cc[8];
};
# 31 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/sys/ttydefaults.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4




extern int ioctl (int __fd, unsigned long int __request, ...) __attribute__ ((__nothrow__ , __leaf__));


# 52 "k8048.h" 2

# 1 "/usr/include/errno.h" 1 3 4
# 54 "k8048.h" 2
# 1 "/usr/include/libgen.h" 1 3 4
# 24 "/usr/include/libgen.h" 3 4



extern char *dirname (char *__path) __attribute__ ((__nothrow__ , __leaf__));







extern char *__xpg_basename (char *__path) __attribute__ ((__nothrow__ , __leaf__));



# 55 "k8048.h" 2
# 1 "/usr/include/fcntl.h" 1 3 4
# 30 "/usr/include/fcntl.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 2 3 4
# 168 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };
# 282 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4

# 356 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4

# 35 "/usr/include/fcntl.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/stat.h" 1 3 4
# 46 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    long int __unused[3];
# 115 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
  };
# 42 "/usr/include/fcntl.h" 2 3 4
# 110 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 119 "/usr/include/fcntl.h" 3 4
extern int open (__const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 143 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, __const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 165 "/usr/include/fcntl.h" 3 4
extern int creat (__const char *__file, __mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 211 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, __off_t __offset, __off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 233 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, __off_t __offset, __off_t __len);
# 252 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h" 3 4
extern int __open_2 (__const char *__path, int __oflag) __attribute__ ((__nonnull__ (1)));
extern int __open_alias (__const char *__path, int __oflag, ...) __asm__ ("" "open")
               __attribute__ ((__nonnull__ (1)));






extern void __open_too_many_args (void) __attribute__((__error__ ("open can be called either with 2 or 3 arguments, not more")))
                                                                  ;
extern void __open_missing_mode (void) __attribute__((__error__ ("open with O_CREAT in second argument needs 3 arguments")))
                                                               ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
open (__const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __open_too_many_args ();

  if (__builtin_constant_p (__oflag))
    {
      if ((__oflag & 0100) != 0 && __builtin_va_arg_pack_len () < 1)
 {
   __open_missing_mode ();
   return __open_2 (__path, __oflag);
 }
      return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
    }

  if (__builtin_va_arg_pack_len () < 1)
    return __open_2 (__path, __oflag);

  return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
}
# 99 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h" 3 4
extern int __openat_2 (int __fd, __const char *__path, int __oflag)
     __attribute__ ((__nonnull__ (2)));
extern int __openat_alias (int __fd, __const char *__path, int __oflag, ...) __asm__ ("" "openat")

     __attribute__ ((__nonnull__ (2)));
# 112 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h" 3 4
extern void __openat_too_many_args (void) __attribute__((__error__ ("openat can be called either with 3 or 4 arguments, not more")))
                                                                    ;
extern void __openat_missing_mode (void) __attribute__((__error__ ("openat with O_CREAT in third argument needs 4 arguments")))
                                                                ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__, __artificial__)) int
openat (int __fd, __const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __openat_too_many_args ();

  if (__builtin_constant_p (__oflag))
    {
      if ((__oflag & 0100) != 0 && __builtin_va_arg_pack_len () < 1)
 {
   __openat_missing_mode ();
   return __openat_2 (__fd, __path, __oflag);
 }
      return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
    }

  if (__builtin_va_arg_pack_len () < 1)
    return __openat_2 (__fd, __path, __oflag);

  return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
}
# 253 "/usr/include/fcntl.h" 2 3 4



# 56 "k8048.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 1 3 4
# 169 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 145 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
# 157 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 40 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
# 158 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 146 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
# 150 "/usr/include/limits.h" 2 3 4
# 170 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include-fixed/limits.h" 2 3 4
# 57 "k8048.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stdint.h" 1 3 4


# 1 "/usr/include/stdint.h" 1 3 4
# 27 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 49 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 66 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 91 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 104 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 123 "/usr/include/stdint.h" 3 4
typedef unsigned long int uintptr_t;
# 135 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 4 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stdint.h" 2 3 4
# 58 "k8048.h" 2
# 89 "k8048.h"
struct k8048;



# 1 "serial_posix.h" 1
# 40 "serial_posix.h"
# 1 "/usr/include/errno.h" 1 3 4
# 41 "serial_posix.h" 2
# 1 "/usr/include/termios.h" 1 3 4
# 36 "/usr/include/termios.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/termios.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/termios.h" 3 4
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;


struct termios
  {
    tcflag_t c_iflag;
    tcflag_t c_oflag;
    tcflag_t c_cflag;
    tcflag_t c_lflag;
    cc_t c_line;
    cc_t c_cc[32];
    speed_t c_ispeed;
    speed_t c_ospeed;


  };
# 41 "/usr/include/termios.h" 2 3 4
# 49 "/usr/include/termios.h" 3 4
extern speed_t cfgetospeed (__const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));


extern speed_t cfgetispeed (__const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));


extern int cfsetospeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));


extern int cfsetispeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));



extern int cfsetspeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));




extern int tcgetattr (int __fd, struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));



extern int tcsetattr (int __fd, int __optional_actions,
        __const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));




extern void cfmakeraw (struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));



extern int tcsendbreak (int __fd, int __duration) __attribute__ ((__nothrow__ , __leaf__));





extern int tcdrain (int __fd);



extern int tcflush (int __fd, int __queue_selector) __attribute__ ((__nothrow__ , __leaf__));



extern int tcflow (int __fd, int __action) __attribute__ ((__nothrow__ , __leaf__));
# 105 "/usr/include/termios.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/ttydefaults.h" 1 3 4
# 106 "/usr/include/termios.h" 2 3 4



# 42 "serial_posix.h" 2
# 58 "serial_posix.h"
int serial_open(const char *);
void serial_close(void);

int get_cts(void);
void set_dtr(int);
void set_rts(int);
void set_tx(int);

void reset_gpios(void);
void set_gpio0(int);
# 94 "k8048.h" 2
# 105 "k8048.h"
# 1 "util.h" 1
# 36 "util.h"
int areyousure(const char *s);
const char *mystrcasestr(const char *, const char *);
# 106 "k8048.h" 2
# 1 "dotconf.h" 1
# 38 "dotconf.h"
void getdotfile(struct k8048 *);
void getconf(struct k8048 *, char *);
# 107 "k8048.h" 2
# 1 "inhx32.h" 1
# 52 "inhx32.h"
typedef struct {
 uint32_t address;
 uint16_t bytes[(256)];
 uint16_t nbytes;
} inhx32_data;


uint8_t inhx32_gethexn(char);
uint8_t inhx32_gethexb(char *);
int inhx32_compare(const void *, const void *);
void inhx32_order(const void *, VISIT, int);
uint32_t inhx32(struct k8048 *, const char *, uint32_t);
void inhx32_free(struct k8048 *);
# 108 "k8048.h" 2
# 1 "io.h" 1
# 144 "io.h"
void io_signal();
void io_signal_on();
void io_signal_off();
void io_config(struct k8048 *);
int io_open(struct k8048 *);
void io_release(struct k8048 *);
void io_close(struct k8048 *, int);
void io_exit(struct k8048 *, int);
char *io_fault(struct k8048 *, int);
char *io_error(struct k8048 *);
void io_usleep(struct k8048 *, uint32_t);
void io_set_pgm(struct k8048 *, uint8_t);
void io_set_vpp(struct k8048 *, uint8_t);
void io_set_pgd(struct k8048 *, uint8_t);
void io_set_pgc(struct k8048 *, uint8_t);
uint8_t io_get_pgd(struct k8048 *);
void io_configure(struct k8048 *, uint8_t);
void io_data_input(struct k8048 *);
uint32_t io_clock_in_bits(struct k8048 *, uint32_t, uint32_t, uint8_t);
void io_data_output(struct k8048 *, uint8_t);
void io_clock_out_bits(struct k8048 *, uint32_t, uint32_t, uint32_t, uint8_t);
uint8_t io_clock_bit_4phase(struct k8048 *, uint8_t, uint8_t);
uint32_t io_clock_bits_4phase(struct k8048 *, uint8_t, uint32_t, uint32_t);
uint32_t io_program_in(struct k8048 *, uint8_t);
void io_program_out(struct k8048 *, uint32_t, uint8_t);
void io_program_feedback(struct k8048 *, char);
void io_test0(struct k8048 *, int, int);
void io_test1(struct k8048 *, int);
void io_test2(struct k8048 *, int);
void io_test3(struct k8048 *, int);
void io_test4(struct k8048 *, int);
void io_test5(struct k8048 *, int);
int io_test_out(struct k8048 *, int, int, uint8_t);
int io_test_in(struct k8048 *, int, int, uint8_t *);
char *io_test_err(int);
int io_test_command(struct k8048 *, int, int, uint8_t *, int, uint32_t *, int);
int io_test_switch(struct k8048 *, int);
int io_test_lasterror(struct k8048 *, int);
# 109 "k8048.h" 2
# 1 "pic.h" 1
# 37 "pic.h"
struct pic_ops {
 uint32_t arch;
 void (*selector)(void);
 void (*read_config_memory)(struct k8048 *, int);
 uint32_t (*get_program_size)(uint32_t *);
 uint32_t (*get_data_size)(uint32_t *);
 uint32_t (*get_executive_size)(uint32_t *);
 uint32_t (*read_program_memory_block)(struct k8048 *, uint32_t *, uint32_t, uint32_t);
 uint32_t (*read_data_memory_block)(struct k8048 *, uint16_t *, uint32_t, uint16_t);
 void (*program)(struct k8048 *, char *, int);
 uint32_t (*verify)(struct k8048 *, char *);
 void (*bulk_erase)(struct k8048 *k, uint16_t, uint16_t);
 void (*row_erase)(struct k8048 *, uint32_t, uint32_t);
 void (*dumpdeviceid)(struct k8048 *);
 void (*dumpconfig)(struct k8048 *, int);
 void (*dumposccal)(struct k8048 *);
 void (*dumpdevice)(struct k8048 *);
 void (*dumphexcode)(struct k8048 *, uint32_t, uint32_t, uint32_t *);
 void (*dumpinhxcode)(struct k8048 *, uint32_t, uint32_t, uint32_t *);
 void (*dumphexdata)(struct k8048 *, uint32_t, uint32_t, uint16_t *);
 void (*dumpinhxdata)(struct k8048 *, uint32_t, uint32_t, uint16_t *);
};
# 72 "pic.h"
void pic_x(struct k8048 *);

uint32_t pic_arch(struct k8048 *, const char *);

int pic_cmp(const void *, const void *);

void pic_selector(struct k8048 *);



void pic_read_config(struct k8048 *, int);

uint32_t pic_get_program_size(struct k8048 *, uint32_t *);
uint32_t pic_get_data_size(struct k8048 *, uint32_t *);
uint32_t pic_get_executive_size(struct k8048 *, uint32_t *);

uint32_t pic_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);


void pic_program(struct k8048 *, char *, int);
uint32_t pic_verify(struct k8048 *, char *);



void pic_writebandgap(struct k8048 *k, uint16_t);
void pic_writeosccal(struct k8048 *, uint16_t);
void pic_blank(struct k8048 *);




void pic_erase(struct k8048 *, uint32_t, uint32_t);

void pic_dumpdeviceid(struct k8048 *);



void pic_dumpconfig(struct k8048 *);
void pic_dumposccal(struct k8048 *);

void pic_dumpaddr(uint32_t, int);
void pic_dumpbyte(uint32_t, uint8_t);
void pic_dumpword16(uint32_t, uint16_t);
void pic_dumpword32(uint32_t, uint32_t);

void pic_dumpdevice(struct k8048 *);

void pic_dumpprogram(struct k8048 *, uint32_t);
void pic_dumpdata(struct k8048 *);
void pic_dumpexec(struct k8048 *);




void pic_dump_program(struct k8048 *, uint32_t, uint32_t, int);
int pic_mtcode(uint32_t, uint32_t, uint32_t *);
void pic_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic_dump_data(struct k8048 *, uint32_t, uint32_t, int);
int pic_mtdata(uint16_t, uint32_t, uint16_t *);
void pic_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
# 110 "k8048.h" 2
# 1 "pic12.h" 1
# 42 "pic12.h"
struct pic12_config {
 uint16_t userid[4];
 uint16_t osccal_backup;
 uint16_t osccal_reset;
 uint16_t config;
};

struct pic12_dsmap {
 char devicename[(1024)];
 uint32_t deviceid;
 uint16_t flash;
 uint16_t dataflash;
 uint32_t datasheet;
 uint16_t backupaddr;
 uint16_t configaddr;
 uint8_t nlatches;
};
# 151 "pic12.h"
uint32_t pic12_arch(struct k8048 *);
void pic12_selector(void);
void pic12_program_verify(struct k8048 *);
void pic12_standby(struct k8048 *);
uint16_t pic12_read_program_memory_increment(struct k8048 *);
void pic12_read_config_memory(struct k8048 *, int);
void pic12_bulk_erase(struct k8048 *, uint16_t, uint16_t);
uint32_t pic12_get_program_size(uint32_t *);
uint32_t pic12_get_data_size(uint32_t *);
uint32_t pic12_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic12_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);
uint16_t pic12_read_osccal(struct k8048 *);
uint32_t pic12_write_osccal(struct k8048 *, uint16_t);
uint32_t pic12_write_config(struct k8048 *, uint16_t);
void pic12_programregion(struct k8048 *, uint16_t, uint16_t, uint16_t);
uint32_t pic12_verifyregion(struct k8048 *, uint16_t, uint16_t, uint16_t);
void pic12_program(struct k8048 *, char*, int);
uint32_t pic12_verify(struct k8048 *, char *);
void pic12_dumpdeviceid(struct k8048 *);
void pic12_dumposccal(struct k8048 *);
void pic12_dumpconfig(struct k8048 *, int);
void pic12_dumpconfig_verbose(struct k8048 *);
void pic12_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic12_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic12_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic12_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic12_dumpdevice(struct k8048 *);
# 111 "k8048.h" 2
# 1 "pic14.h" 1
# 45 "pic14.h"
struct pic14_config {
 uint16_t userid[(4)];
 uint16_t reserved;
 uint16_t revisionid;
 uint16_t deviceid;
 uint16_t config[(3)];
 uint16_t calib[(32)];
};

struct pic14_dsmap {
 char devicename[(1024)];
 uint16_t deviceid;
 uint16_t flash;
 uint16_t eeprom;
 uint32_t datasheet;
 uint16_t configaddr;
 uint16_t dataaddr;
 uint8_t nconfig;
 uint8_t ncalib;
 uint8_t nlatches;
        uint8_t erasesize;




};
# 766 "pic14.h"
uint32_t pic14_arch(struct k8048 *);
void pic14_selector(void);
void pic14_program_verify(struct k8048 *);
void pic14_standby(struct k8048 *);
uint16_t pic14_read_program_memory_increment(struct k8048 *);
uint8_t pic14_read_data_memory_increment(struct k8048 *);
void pic14_bulk_erase(struct k8048 *, uint16_t, uint16_t);
void pic14_row_erase(struct k8048 *, uint32_t, uint32_t);
void pic14_read_config_memory(struct k8048 *, int);
uint32_t pic14_get_program_size(uint32_t *);
uint32_t pic14_get_data_size(uint32_t *);
uint32_t pic14_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic14_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);
uint32_t pic14_write_word(struct k8048 *, uint16_t);
uint16_t pic14_read_osccal(struct k8048 *);
uint32_t pic14_write_osccal(struct k8048 *, uint16_t);
uint32_t pic14_write_calib(struct k8048 *, uint16_t);
uint32_t pic14_write_config(struct k8048 *, uint16_t);
uint16_t pic14_getregion(uint16_t);
uint16_t pic14_initregion(struct k8048 *, uint16_t, uint16_t *);
void pic14_loadregion(struct k8048 *, uint16_t, uint16_t);
void pic14_programregion(struct k8048 *, uint16_t, uint16_t, uint16_t);
uint32_t pic14_verifyregion(struct k8048 *, uint16_t, uint16_t, uint16_t);
void pic14_program(struct k8048 *, char *, int);
uint32_t pic14_verify(struct k8048 *, char *);
void pic14_dumpdeviceid(struct k8048 *);
void pic14_dumposccal(struct k8048 *);
void pic14_dumpconfig(struct k8048 *, int);
void pic14_dumpconfig_16f627(uint16_t);
void pic14_dumpconfig_12f675(uint16_t);
void pic14_dumpconfig_16f877a(uint16_t);
void pic14_dumpconfig_16f88(uint16_t, uint16_t);
void pic14_dumpconfig_16f628a(uint16_t);
void pic14_dumpconfig_12f683(uint16_t);
void pic14_dumpconfig_16f886(uint16_t, uint16_t);
void pic14_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic14_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic14_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic14_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic14_dumpdevice(struct k8048 *);
# 112 "k8048.h" 2
# 1 "pic16.h" 1
# 42 "pic16.h"
struct pic16_config {
 uint16_t deviceid;
 uint8_t idloc[8];
 uint8_t config[16];
};

struct pic16_dsmap {
 char devicename[(1024)];
 uint16_t deviceid;
 uint32_t flash;
 uint16_t eeprom;
 uint32_t datasheet;
 uint8_t devidrev4;
 uint8_t panelsize;
 uint32_t p9, p9a;
 uint32_t p10, p11;
 uint32_t configaddr;
 uint8_t configsize;
 uint16_t erasesize;
};
# 406 "pic16.h"
uint32_t pic16_arch(struct k8048 *);
void pic16_selector(void);
void pic16_program_verify(struct k8048 *);
void pic16_standby(struct k8048 *);
void pic16_init_code_memory_access(struct k8048 *);
void pic16_init_config_memory_access(struct k8048 *);
void pic16_init_data_memory_access(struct k8048 *);
void pic16_write_enable(struct k8048 *);
void pic16_write_disable(struct k8048 *);
void pic16_free(struct k8048 *);
void pic16_write(struct k8048 *);
void pic16_set_table_pointer(struct k8048 *, uint32_t);
void pic16_erase_block(struct k8048 *, uint32_t);
void pic16_erase_row(struct k8048 *, uint32_t, uint32_t);
void pic16_bulk_erase(struct k8048 *, uint16_t, uint16_t);
void pic16_row_erase(struct k8048 *, uint32_t, uint32_t);
void pic16_read_config_memory(struct k8048 *, int);
uint32_t pic16_get_program_size(uint32_t *);
uint32_t pic16_get_data_size(uint32_t *);
uint32_t pic16_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic16_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);
void pic16_set_data_pointer(struct k8048 *, uint16_t);
uint8_t pic16_read_data_memory(struct k8048 *);
void pic16_write_data_memory(struct k8048 *, uint8_t);
void pic16_write_buffer(struct k8048 *, uint32_t, uint32_t, uint8_t *, uint32_t);
void pic16_write_buffered(struct k8048 *, uint32_t, uint32_t, int);
void pic16_write_buffer_init(struct k8048 *);
void pic16_goto100000(struct k8048 *);
void pic16_write_configreg(struct k8048 *, uint8_t, uint32_t, uint32_t);
uint32_t pic16_write_config(struct k8048 *);
uint32_t pic16_getregion(uint32_t);
uint32_t pic16_init_writeregion(struct k8048 *, uint32_t);
void pic16_writeregion(struct k8048 *, uint32_t, uint32_t, uint8_t);
uint32_t pic16_init_verifyregion(struct k8048 *, uint32_t);
uint32_t pic16_verifyregion(struct k8048 *, uint32_t, uint32_t, uint16_t, uint8_t);
void pic16_program(struct k8048 *, char *, int);
uint32_t pic16_verify(struct k8048 *, char *);
void pic16_dumpdeviceid(struct k8048 *);
void pic16_dumpconfig(struct k8048 *, int);
void pic16_dumpconfig_verbose(struct k8048 *);
void pic16_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic16_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic16_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic16_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic16_dumpdevice(struct k8048 *);
# 113 "k8048.h" 2
# 1 "pic24.h" 1
# 45 "pic24.h"
struct pic24_config {
 uint32_t appid;
 uint32_t calib[(8)];
 uint32_t config[(16)];
 uint32_t fuid[(32)];
 uint32_t deviceid;
 uint32_t revision;

 uint16_t tblpag;
 uint16_t nvmcon;
 uint16_t visi;
 uint8_t tblnop;
 uint8_t gotonop;
};

struct pic24_dsmap {
 char devicename[(1024)];
 uint16_t deviceid;
 uint32_t flash;
 uint16_t eeprom;
 uint32_t datasheet;
 uint32_t configaddr;
 uint8_t nconfig;
 uint32_t fuidaddr;
 uint8_t nfuid;
 uint32_t calibaddr;
 uint8_t ncalib;
 uint8_t codepanelsize;
 uint8_t datapanelsize;
};
# 594 "pic24.h"
uint32_t pic24_arch(struct k8048 *);
void pic24_selector(void);
void pic24_program_verify(struct k8048 *);
void pic24_standby(struct k8048 *);
void pic24_goto200(struct k8048 *);
void pic24_bulk_erase(struct k8048 *, uint16_t, uint16_t);
void pic24_read_config_memory(struct k8048 *, int);
uint32_t pic24_get_program_size(uint32_t *);
uint32_t pic24_get_data_size(uint32_t *);
uint32_t pic24_get_executive_size(uint32_t *);
uint32_t pic24_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic24_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);
void pic24_write_program(struct k8048 *, uint32_t, uint32_t *, uint32_t);
void pic24_write_buffer_init(struct k8048 *);
void pic24_write_buffer(struct k8048 *, uint32_t, uint32_t, uint32_t *, uint32_t);
void pic24_write_buffered(struct k8048 *, uint32_t, uint32_t, int);
void pic24_write_config_init1(struct k8048 *);
void pic24_write_config_init2(struct k8048 *);
void pic24_write_config_word(struct k8048 *, uint32_t, uint16_t);
uint32_t pic24_write_config_words(struct k8048 *);
uint32_t pic24_write_fuid_words(struct k8048 *);
uint32_t pic24_write_config(struct k8048 *);
uint32_t pic24_getregion(uint32_t);
uint32_t pic24_init_writeregion(struct k8048 *, uint32_t);
void pic24_writeregion(struct k8048 *, uint32_t, uint32_t, uint32_t);
uint32_t pic24_init_verifyregion(struct k8048 *, uint32_t);
uint32_t pic24_verifyregion(struct k8048 *, uint32_t, uint32_t, uint16_t, uint32_t);
void pic24_program(struct k8048 *, char *, int);
uint32_t pic24_verify(struct k8048 *, char *);
void pic24_dumpdeviceid(struct k8048 *);
void pic24_dumpconfig(struct k8048 *, int);
void pic24_dumpconfig_verbose(struct k8048 *);
void pic24_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic24_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic24_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic24_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic24_dumpdevice(struct k8048 *);
# 114 "k8048.h" 2
# 1 "pic32.h" 1
# 36 "pic32.h"
struct pic32_config {
 uint32_t deviceid;
 uint8_t status;
};

struct pic32_dsmap {
 char devicename[(1024)];
 uint32_t deviceid;
 uint32_t idmask;
};
# 232 "pic32.h"
uint32_t pic32_arch(struct k8048 *);
void pic32_selector(void);
void pic32_program_verify(struct k8048 *);
void pic32_standby(struct k8048 *);
void pic32_setmode(struct k8048 *, uint8_t, uint32_t);
void pic32_read_config_memory(struct k8048 *, int);
void pic32_dumpdeviceid(struct k8048 *);
# 115 "k8048.h" 2

struct k8048 {
 char dotfile[(1024)];
 char device[(1024)];
 char devicename[(1024)];
 uint16_t bitrules;
 uint32_t key;
 uint32_t busy;
 uint32_t sleep_low;
 uint32_t sleep_high;
 uint32_t fwsleep;
 uint32_t debug;
 uint8_t clock_falling;

 inhx32_data **pdata;
 uint32_t count;


 uint8_t iot;




        uint8_t vpp;
        uint8_t pgc;
        uint8_t pgdo;
        uint8_t pgdi;
        uint8_t pgm;


 struct pic_ops *pic;
};


void usage_k8048(struct k8048 *);
void usage_ktest(struct k8048 *, char *);
void usage_k12(struct k8048 *, char *);
void usage_k14(struct k8048 *, char *);
void usage_k16(struct k8048 *, char *);
void usage_k24(struct k8048 *, char *);
void usage_k32(struct k8048 *, char *);
void usage(struct k8048 *, char *, char *);
int main(int, char **);
# 34 "pic14.c" 2







struct pic_ops pic14_ops = {
 .arch = (0x00003FFF),
 .selector = pic14_selector,
 .read_config_memory = pic14_read_config_memory,
 .get_program_size = pic14_get_program_size,
 .get_data_size = pic14_get_data_size,
 .get_executive_size = ((void *)0),
 .read_program_memory_block = pic14_read_program_memory_block,
 .read_data_memory_block = pic14_read_data_memory_block,
 .program = pic14_program,
 .verify = pic14_verify,
 .bulk_erase = pic14_bulk_erase,
 .row_erase = pic14_row_erase,
 .dumpdeviceid = pic14_dumpdeviceid,
 .dumpconfig = pic14_dumpconfig,
 .dumposccal = pic14_dumposccal,
 .dumpdevice = pic14_dumpdevice,
 .dumphexcode = pic14_dumphexcode,
 .dumpinhxcode = pic14_dumpinhxcode,
 .dumphexdata = pic14_dumphexdata,
 .dumpinhxdata = pic14_dumpinhxdata,
};

uint32_t
pic14_arch(struct k8048 *k)
{
 k->pic = &pic14_ops;

 return k->pic->arch;
}







struct pic14_config pic14_conf;







struct pic14_dsmap pic14_map[] =
{

{"PIC16C84", (0x0560 + 0x05), 1024, 64, (30189), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F83", (0x0560 + 0x03), 512, 64, (30262), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F84", (0x0560 + 0x04), 1024, 64, (30262), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F84A", (0x0560), 1024, 64, (30262), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F627", (0x07a0), 1024, 128, (30034), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F628", (0x07c0), 2048, 128, (30034), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F870", (0x0d00), 2048, 64, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F871", (0x0d20), 2048, 64, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F872", (0x08e0), 2048, 64, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F873", (0x0960), 4096, 128, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F874", (0x0920), 4096, 128, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F876", (0x09e0), 8192, 256, (39025), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F877", (0x09a0), 8192, 256, (39025), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F873A", (0x0e40), 4096, 128, (39589), 0x2000, 0x2100, 1, 0, 8, 0},
{"PIC16F874A", (0x0e60), 4096, 128, (39589), 0x2000, 0x2100, 1, 0, 8, 0},
{"PIC16F876A", (0x0e00), 8192, 256, (39589), 0x2000, 0x2100, 1, 0, 8, 0},
{"PIC16F877A", (0x0e20), 8192, 256, (39589), 0x2000, 0x2100, 1, 0, 8, 0},


{"PIC16F87", (0x0720), 4096, 256, (39607), 0x2000, 0x2100, 2, 0, 4, 0},
{"PIC16F88", (0x0760), 4096, 256, (39607), 0x2000, 0x2100, 2, 0, 4, 0},

{"PIC12F629", (0x0f80), 1024, 128, (41191), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC12F675", (0x0fc0), 1024, 128, (41191), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F630", (0x10c0), 1024, 128, (41191), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F676", (0x10e0), 1024, 128, (41191), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F627A", (0x1040), 1024, 128, (41196), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F628A", (0x1060), 2048, 128, (41196), 0x2000, 0x2100, 1, 0, 1, 0},
{"PIC16F648A", (0x1100), 4096, 256, (41196), 0x2000, 0x2100, 1, 0, 1, 0},

{"PIC16F818", (0x04c0), 1024, 128, (39603), 0x2000, 0x2100, 1, 0, 4, 0},
{"PIC16F819", (0x04e0), 2048, 256, (39603), 0x2000, 0x2100, 1, 0, 4, 0},

{"PIC16F716", (0x1140), 2048, 0, (40245), 0x2000, 0x2100, 1, 0, 4, 0},


{"PIC16F631", (0x1420), 1024, 128, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F677", (0x1440), 2048, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F685", (0x04a0), 4096, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F687", (0x1320), 2048, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F689", (0x1340), 4096, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F690", (0x1400), 4096, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC12F635", (0x0fa0), 1024, 128, (41204), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC16F636", (0x10a0), 2048, 256, (41204), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC16F639", (0x10a0), 2048, 256, (41204), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC12F683", (0x0460), 2048, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F684", (0x1080), 2048, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16F688", (0x1180), 4096, 256, (41204), 0x2000, 0x2100, 1, 1, 4, 16},


{"PIC16F722", (0x1880), 2048, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F722A", (0x1B20), 2048, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F723", (0x1860), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F723A", (0x1B00), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F724", (0x1840), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F726", (0x1820), 8192, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16F727", (0x1800), 8192, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF722", (0x1980), 2048, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF722A", (0x1B60), 2048, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF723", (0x1960), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF723A", (0x1B40), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF724", (0x1940), 4096, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF726", (0x1920), 8192, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF727", (0x1900), 8192, 0, (41332), 0x2000, 0x2100, 2, 2, 8, 32},


{"PIC16F720", (0x1c00), 2048, 0, (41409), 0x2000, 0x2100, 2, 2, 32, 32},
{"PIC16F721", (0x1c20), 4096, 0, (41409), 0x2000, 0x2100, 2, 2, 32, 32},
{"PIC16LF720", (0x1c40), 2048, 0, (41409), 0x2000, 0x2100, 2, 2, 32, 32},
{"PIC16LF721", (0x1c60), 4096, 0, (41409), 0x2000, 0x2100, 2, 2, 32, 32},


{"PIC16F707", (0x1AC0), 8192, 0, (41405), 0x2000, 0x2100, 2, 2, 8, 32},
{"PIC16LF707", (0x1AE0), 8192, 0, (41405), 0x2000, 0x2100, 2, 2, 8, 32},


{"PIC12F609", (0x2240), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC12HV609", (0x2280), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC12F615", (0x2180), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC12HV615", (0x21a0), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC16F610", (0x2260), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC16HV610", (0x22a0), 1024, 0, (41284), 0x2000, 0x2100, 1, 1, 1, 0},
{"PIC16F616", (0x1240), 2048, 0, (41284), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC16HV616", (0x1260), 2048, 0, (41284), 0x2000, 0x2100, 1, 1, 4, 16},
{"PIC12F617", (0x1360), 2048, 0, (41284), 0x2000, 0x2100, 1, 1, 4, 16},


{"PIC16F882", (0x2000), 2048, 128, (41287), 0x2000, 0x2100, 2, 1, 8, 16},
{"PIC16F883", (0x2020), 4096, 256, (41287), 0x2000, 0x2100, 2, 1, 8, 16},
{"PIC16F884", (0x2040), 4096, 256, (41287), 0x2000, 0x2100, 2, 1, 8, 16},
{"PIC16F886", (0x2060), 8192, 256, (41287), 0x2000, 0x2100, 2, 1, 8, 16},
{"PIC16F887", (0x2080), 8192, 256, (41287), 0x2000, 0x2100, 2, 1, 8, 16},

{"PIC16F73", (0x0600), 4096, 0, (30324), 0x2000, 0x2100, 1, 0, 2, 0},
{"PIC16F74", (0x0620), 4096, 0, (30324), 0x2000, 0x2100, 1, 0, 2, 0},
{"PIC16F76", (0x0640), 8192, 0, (30324), 0x2000, 0x2100, 1, 0, 2, 0},
{"PIC16F77", (0x0660), 8192, 0, (30324), 0x2000, 0x2100, 1, 0, 2, 0},


{"PIC10F320", (0x29A0), 256, 0, (41572), 0x2000, 0x2100, 1, 2, 16, 16},
{"PIC10F322", (0x2980), 512, 0, (41572), 0x2000, 0x2100, 1, 2, 16, 16},
{"PIC10LF320", (0x29E0), 256, 0, (41572), 0x2000, 0x2100, 1, 2, 16, 16},
{"PIC10LF322", (0x29C0), 512, 0, (41572), 0x2000, 0x2100, 1, 2, 16, 16},


{"PIC12F1501", (0x2CC0), 1024, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1503", (0x2CE0), 2048, 0, (41573), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16F1507", (0x2D00), 2048, 0, (41573), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16F1508", (0x2D20), 4096, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1509", (0x2D40), 8192, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC12LF1501", (0x2C80), 1024, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1503", (0x2DA0), 2048, 0, (41573), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16LF1507", (0x2DC0), 2048, 0, (41573), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16LF1508", (0x2DE0), 4096, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1509", (0x2E00), 8192, 0, (41573), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC12F1840", (0x1D80), 4096, 256, (41439), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1847", (0x1480), 8192, 256, (41439), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC12LF1840", (0x1DC0), 4096, 256, (41439), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1847", (0x14A0), 8192, 256, (41439), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC16F1933", (0x2300), 4096, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1934", (0x2340), 4096, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1936", (0x2360), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1937", (0x2380), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1938", (0x23A0), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1939", (0x23C0), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1946", (0x2500), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1947", (0x2520), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1933", (0x2400), 4096, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1934", (0x2440), 4096, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1936", (0x2460), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1937", (0x2480), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1938", (0x24A0), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1939", (0x24C0), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1946", (0x2580), 8192, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1947", (0x25A0), 16384, 256, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1902", (0x2C20), 2048, 0, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1903", (0x2C00), 4096, 0, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1904", (0x2C80), 4096, 0, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1906", (0x2C60), 8192, 0, (41397), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1907", (0x2C40), 8192, 0, (41397), 0x8000, 0xF000, 2, 2, 8, 32},

{"PIC16F917", (0x1380), 8192, 256, (41244), 0x2000, 0x2100, 1, 2, 8, 16},
{"PIC16F916", (0x13a0), 8192, 256, (41244), 0x2000, 0x2100, 1, 2, 8, 16},
{"PIC16F914", (0x13c0), 4096, 256, (41244), 0x2000, 0x2100, 1, 2, 8, 16},
{"PIC16F913", (0x13e0), 4096, 256, (41244), 0x2000, 0x2100, 1, 2, 8, 16},
{"PIC16F946", (0x1460), 16384, 256, (41244), 0x2000, 0x2100, 1, 2, 8, 16},


{"PIC12F1822", (0x2700), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16F1823", (0x2720), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16F1826", (0x2780), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1827", (0x27a0), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16F1824", (0x2740), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1828", (0x27c0), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1825", (0x2760), 8192, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1829", (0x27e0), 8192, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC12LF1822", (0x2800), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16LF1823", (0x2820), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16LF1826", (0x2880), 2048, 256, (41390), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1827", (0x28a0), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 8, 32},
{"PIC16LF1824", (0x2840), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1828", (0x28c0), 4096, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1825", (0x2860), 8192, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1829", (0x28e0), 8192, 256, (41390), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC16F737", (0x0BA0), 4096, 0, (30492), 0x2000, 0x2100, 2, 0, 2, 0},
{"PIC16F747", (0x0BE0), 4096, 0, (30492), 0x2000, 0x2100, 2, 0, 2, 0},
{"PIC16F767", (0x0EA0), 8192, 0, (30492), 0x2000, 0x2100, 2, 0, 2, 0},
{"PIC16F777", (0x0DE0), 8192, 0, (30492), 0x2000, 0x2100, 2, 0, 2, 0},


{"PIC16F1782", (0x2a00), 2048, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1783", (0x2a20), 4096, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1784", (0x2a40), 4096, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1786", (0x2a60), 8192, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1787", (0x2a80), 8192, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1788", (0x302b), 16384, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16F1789", (0x302a), 16384, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1782", (0x2aa0), 2048, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1783", (0x2ac0), 4096, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1784", (0x2ae0), 4096, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1786", (0x2b00), 8192, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1787", (0x2b20), 8192, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1788", (0x302d), 16384, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},
{"PIC16LF1789", (0x302c), 16384, 256, (41457), 0x8000, 0xF000, 2, 11, 32, 32},


{"PIC16F1454", (0x3020), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1455", (0x3021), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1459", (0x3023), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1454", (0x3020), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1455", (0x3021), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1459", (0x3023), 8192, 0, (41620), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC16F1527", (0x15a0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1526", (0x1580), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1519", (0x16e0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1518", (0x16c0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1517", (0x16a0), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1516", (0x1680), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1513", (0x1640), 4096, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16F1512", (0x1700), 2048, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1527", (0x15e0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1526", (0x15c0), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1519", (0x17e0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1518", (0x17c0), 16384, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1517", (0x17a0), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1516", (0x1780), 8192, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1513", (0x1740), 4096, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1512", (0x1720), 2048, 0, (41442), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC12F752", (0x1500), 1024, 0, (41561), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC12HV752", (0x1520), 1024, 0, (41561), 0x2000, 0x2100, 1, 2, 4, 16},


{"PIC12LF1552", (0x2BC0), 2048, 0, (41642), 0x8000, 0xF000, 2, 2, 16, 16},
{"PIC16LF1554", (0x2F00), 4096, 0, (40001743), 0x8000, 0xF000, 2, 2, 32, 32},
{"PIC16LF1559", (0x2F20), 8192, 0, (40001743), 0x8000, 0xF000, 2, 2, 32, 32},


{"PIC16F753", (0x3030), 2048, 0, (41686), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC16HV752", (0x3031), 2048, 0, (41686), 0x2000, 0x2100, 1, 2, 4, 16},


{"PIC16F785", (0x1200), 2048, 256, (41237), 0x2000, 0x2100, 1, 2, 4, 16},
{"PIC16HV785", (0x1220), 2048, 256, (41237), 0x2000, 0x2100, 1, 2, 4, 16},


{"PIC16F1703", (0x3061), 2048, 0, (40001683), 0x8000, 0xF000, 2, 4, 16, 16},
{"PIC16F1704", (0x3043), 4096, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1705", (0x3055), 8192, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1707", (0x3060), 2048, 0, (40001683), 0x8000, 0xF000, 2, 4, 16, 16},
{"PIC16F1708", (0x3042), 4096, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1709", (0x3054), 8192, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1703", (0x3063), 2048, 0, (40001683), 0x8000, 0xF000, 2, 4, 16, 16},
{"PIC16LF1704", (0x3045), 4096, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1705", (0x3057), 8192, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1707", (0x3062), 2048, 0, (40001683), 0x8000, 0xF000, 2, 4, 16, 16},
{"PIC16LF1708", (0x3044), 4096, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1709", (0x3056), 8192, 0, (40001683), 0x8000, 0xF000, 2, 8, 32, 32},


{"PIC12F1612", (0x3058), 2048, 0, (40001720), 0x8000, 0xF000, 3, 3, 16, 16},
{"PIC12LF1612", (0x3059), 2048, 0, (40001720), 0x8000, 0xF000, 3, 3, 16, 16},
{"PIC16F1613", (0x304C), 2048, 0, (40001720), 0x8000, 0xF000, 3, 3, 16, 16},
{"PIC16LF1613", (0x304D), 2048, 0, (40001720), 0x8000, 0xF000, 3, 3, 16, 16},


{"PIC16F1713", (0x3049), 4096, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1716", (0x3048), 8192, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1717", (0x305C), 8192, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1718", (0x305B), 16384, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16F1719", (0x305A), 16384, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1713", (0x304B), 4096, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1716", (0x304A), 8192, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1717", (0x305F), 8192, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1718", (0x305E), 16384, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},
{"PIC16LF1719", (0x305D), 16384, 0, (40001714), 0x8000, 0xF000, 2, 8, 32, 32},


{"PIC12F1571", (0x3051), 1024, 0, (40001713), 0x8000, 0xF000, 2, 3, 16, 16},
{"PIC12LF1571", (0x3053), 1024, 0, (40001713), 0x8000, 0xF000, 2, 3, 16, 16},
{"PIC12F1572", (0x3050), 2048, 0, (40001713), 0x8000, 0xF000, 2, 3, 16, 16},
{"PIC12LF1572", (0x3052), 2048, 0, (40001713), 0x8000, 0xF000, 2, 3, 16, 16},

{"(null)", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

};



uint32_t pic14_index = ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1);

void
pic14_selector(void)
{
 uint32_t i;
 char *dnames[((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1)];

 for (i = 0; i < ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1); ++i) {
  dnames[i] = pic14_map[i].devicename;
 }
 qsort(dnames, ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1), sizeof(char *), pic_cmp);
 for (i = 0; i < ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1); ++i) {
  if ((i % (5)) == ((5) - 1))
   printf("%s\n", dnames[i]);
  else
   printf("%s\t", dnames[i]);
 }
 if (i % (5))
  printf("\n");
 printf("Total: %u\n", (uint32_t)((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1));
}
# 408 "pic14.c"
void
pic14_program_verify(struct k8048 *k)
{

 io_configure(k, ((0)));


 io_set_vpp(k, (0));


 io_usleep(k, 1000);

 io_set_pgd(k, (0));
 io_set_pgc(k, (0));
 io_set_pgm(k, (0));
 io_usleep(k, 1000);


 if (k->key == (2)) {

  io_set_vpp(k, (1));

  io_usleep(k, 250);


  io_set_vpp(k, (0));

  io_usleep(k, 250);


  io_program_out(k, (0x4D434850), 33);

  io_usleep(k, 250);
 }

 else {

  io_set_pgm(k, (1));
  io_usleep(k, 10);


  io_set_vpp(k, (1));

  io_usleep(k, 250);
 }
}






void
pic14_standby(struct k8048 *k)
{

 io_set_pgd(k, (0));
 io_set_pgc(k, (0));


 if (k->key == (2)) {

  io_set_vpp(k, (1));

  io_usleep(k, 250);


  io_set_vpp(k, (0));
 }

 else {

  io_set_vpp(k, (0));


  io_set_pgm(k, (0));
 }
}
# 535 "pic14.c"
static inline void
pic14_load_configuration(struct k8048 *k, uint16_t word)
{
 io_program_out(k, 0x00, 6);
 word = (word << 1) | 0x8001;
 io_program_out(k, word, 16);
}
# 584 "pic14.c"
static inline void
pic14_load_data_for_program_memory(struct k8048 *k, uint16_t word)
{
 io_program_out(k, 0x02, 6);
 word = (word << 1) | 0x8001;
 io_program_out(k, word, 16);
}
# 617 "pic14.c"
static inline void
pic14_load_data_for_data_memory(struct k8048 *k, uint16_t word)
{
 io_program_out(k, 0x03, 6);
 word = (word << 1) | 0x8001;
 io_program_out(k, word, 16);
}
# 665 "pic14.c"
static inline uint16_t
pic14_read_data_from_program_memory(struct k8048 *k)
{
 uint16_t word;

 io_program_out(k, 0x04, 6);
 word = io_program_in(k, 16);
 word = (word >> 1) & (0x3FFF);

 return word;
}
# 701 "pic14.c"
static inline uint8_t
pic14_read_data_from_data_memory(struct k8048 *k)
{
 uint16_t word;

 io_program_out(k, 0x05, 6);
 word = io_program_in(k, 16);
 word = (word >> 1) & (0x3FFF);

 return word;
}
# 753 "pic14.c"
static inline void
pic14_increment_address(struct k8048 *k)
{
 io_program_out(k, 0x06, 6);
}
# 779 "pic14.c"
static inline void
pic14_reset_address(struct k8048 *k)
{
 io_program_out(k, 0x16, 6);
}
# 822 "pic14.c"
static inline void
pic14_begin_programming_001000(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x08, 6);
 io_usleep(k, t);
}
# 865 "pic14.c"
static inline void
pic14_begin_programming_011000(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x18, 6);
 io_usleep(k, t);
}
# 881 "pic14.c"
static inline void
pic14_end_programming_010111(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x17, 6);
 io_usleep(k, t);
}
# 897 "pic14.c"
static inline void
pic14_end_programming_001110(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x0E, 6);
 io_usleep(k, t);
}
# 932 "pic14.c"
static inline void
pic14_end_programming_001010(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x0A, 6);
 io_usleep(k, t);
}
# 979 "pic14.c"
static inline void
pic14_bulk_erase_program_memory(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x09, 6);
 io_usleep(k, t);
}
# 1008 "pic14.c"
static inline void
pic14_bulk_erase_data_memory(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x0B, 6);
 io_usleep(k, t);
}
# 1024 "pic14.c"
static inline void
pic14_bulk_erase_setup1(struct k8048 *k)
{
 io_program_out(k, 0x01, 6);
}
# 1039 "pic14.c"
static inline void
pic14_bulk_erase_setup2(struct k8048 *k)
{
 io_program_out(k, 0x07, 6);
}
# 1054 "pic14.c"
static inline void
pic14_chip_erase(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x1F, 6);
 io_usleep(k, t);
}
# 1088 "pic14.c"
static inline void
pic14_row_erase_program_memory(struct k8048 *k, uint32_t t)
{
 io_program_out(k, 0x11, 6);
 io_usleep(k, t);
}
# 1106 "pic14.c"
uint16_t
pic14_read_program_memory_increment(struct k8048 *k)
{
 uint16_t data = pic14_read_data_from_program_memory(k);

 pic14_increment_address(k);

 return data;
}






uint8_t
pic14_read_data_memory_increment(struct k8048 *k)
{
 uint8_t data = pic14_read_data_from_data_memory(k);

 pic14_increment_address(k);

 return data;
}
# 1138 "pic14.c"
void
pic14_bulk_erase(struct k8048 *k, uint16_t osccal, uint16_t bandgap)
{
 if (pic14_map[pic14_index].datasheet != (41191)) {
  if (osccal != (0xFFFF) && osccal != (0xFFFE)) {
   printf("%s: error: OSCCAL is not supported on this device\n",
    __func__);
   return;
  }
  if (bandgap != (0xFFFF) && bandgap != (0xFFFE)) {
   printf("%s: error: BANDGAP is not supported on this device\n",
    __func__);
   return;
  }
 } else {
  if (osccal == (0xFFFF)) {
   osccal = pic14_read_osccal(k);
  }
  if (bandgap == (0xFFFF)) {
   bandgap = pic14_conf.config[0];
  }
 }

 pic14_program_verify(k);

 switch (pic14_map[pic14_index].datasheet) {
 case (30189):
 case (30262):
 case (30034):
 case (39025):

   pic14_load_configuration(k, 0x3FFF);
   for (uint32_t i = 0; i < 7; i++)
    pic14_increment_address(k);
   pic14_bulk_erase_setup1(k);
   pic14_bulk_erase_setup2(k);
   pic14_begin_programming_001000(k, (10000));
   pic14_bulk_erase_setup1(k);
   pic14_bulk_erase_setup2(k);

   pic14_load_data_for_data_memory(k, 0x3FFF);
   if (pic14_conf.deviceid == (0x0560 + 0x03) || pic14_conf.deviceid == (0x0560 + 0x04)) {
    pic14_bulk_erase_setup1(k);
    pic14_bulk_erase_setup2(k);
    pic14_begin_programming_001000(k, (20000));
    pic14_bulk_erase_setup1(k);
    pic14_bulk_erase_setup2(k);
   } else {
    pic14_bulk_erase_data_memory(k, (10000));
    pic14_begin_programming_011000(k, (10000));
   }
   break;

 case (39589):
 case (39603):
 case (39607):
   pic14_load_configuration(k, 0x3FFF);
   pic14_chip_erase(k, (10000));
   break;


 case (41196):
 case (41287):
 case (41204):
 case (41191):

 case (41439):
 case (41397):
 case (41244):
 case (41390):
 case (41457):
 case (41237):
   pic14_load_configuration(k, 0x3FFF);

   pic14_bulk_erase_program_memory(k, (10000));

   pic14_bulk_erase_data_memory(k, (10000));
   break;


 case (40245):
 case (41332):
 case (41409):
 case (41405):
 case (41284):
 case (41572):
 case (41573):
 case (41442):
 case (41620):
 case (41561):
 case (41642):
 case (40001743):
 case (41686):
 case (40001683):
 case (40001720):
 case (40001714):
 case (40001713):
   pic14_load_configuration(k, 0x3FFF);

   pic14_bulk_erase_program_memory(k, (10000));
   break;


 case (30324):
 case (30492):
   pic14_load_configuration(k, 0x3FFF);

   pic14_bulk_erase_program_memory(k, (30000));
   break;

 default: printf("%s: information: unimplemented\n", __func__);
   break;
 }

 pic14_standby(k);

 if (pic14_map[pic14_index].datasheet == (41191)) {
  if (osccal != (0xFFFE)) {
   pic14_write_osccal(k, osccal);
  }
  if (bandgap != (0xFFFE)) {
   bandgap = (bandgap & (0x3000)) | (0x01ff);
   pic14_write_config(k, bandgap);
  }
 }
}




void
pic14_row_erase(struct k8048 *k, uint32_t row, uint32_t nrows)
{
 if (row == (((4294967295U)) - 2)) {
  if (pic14_map[pic14_index].eeprom == 0) {
   printf("%s: information: data EEPROM/flash is not supported on this device\n", __func__);
   return;
  }

  pic14_program_verify(k);


  for (uint32_t i = 0; i < pic14_map[pic14_index].eeprom; ++i) {
   pic14_load_data_for_data_memory(k, 0x3FFF);
   pic14_write_word(k, (3));
   pic14_increment_address(k);
  }

  pic14_standby(k);
  return;
 }

 if (pic14_map[pic14_index].erasesize == 0) {
  printf("%s: information: unsupported\n", __func__);
  return;
 }

 if (row == ((4294967295U))) {
  pic14_program_verify(k);

  pic14_load_configuration(k, 0x3FFF);


  pic14_row_erase_program_memory(k, 6000);

  pic14_standby(k);
  return;
 }
# 1323 "pic14.c"
 uint32_t erasesize = pic14_map[pic14_index].erasesize;
 if (erasesize == 0)
  erasesize = 16;

 uint32_t maxrows = pic14_map[pic14_index].flash / erasesize;
 if (row >= maxrows) {
  printf("%s: information: row out of range\n", __func__);
  return;
 }

 uint32_t numrows = maxrows - row;
 if (nrows > numrows) {
  nrows = numrows;
 }

 uint32_t address = row * erasesize, PC_address = 0;

 pic14_program_verify(k);

 pic14_load_data_for_program_memory(k, 0x3FFF);

 while (nrows--) {
  while (address > PC_address) {
   PC_address++;
   pic14_increment_address(k);
  }


  pic14_row_erase_program_memory(k, 6000);

  address += erasesize;
 }

 pic14_standby(k);
}
# 1368 "pic14.c"
void
pic14_read_config_memory(struct k8048 *k, int flag __attribute__((unused)))
{
 uint32_t dev;


 pic14_index = ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1);


 memset(&pic14_conf, 0, sizeof(pic14_conf));

 pic14_program_verify(k);
 pic14_load_configuration(k, 0);

 for (uint32_t i = 0; i < 4; ++i)
  pic14_conf.userid[i] = pic14_read_program_memory_increment(k);
 pic14_conf.reserved = pic14_read_program_memory_increment(k);
 pic14_conf.revisionid = pic14_read_program_memory_increment(k);
 pic14_conf.deviceid = pic14_read_program_memory_increment(k);


 if (k->devicename[0]) {
  for (dev = 0; pic14_map[dev].deviceid; ++dev) {
   if (strcasecmp(pic14_map[dev].devicename, k->devicename) == 0) {
    pic14_conf.deviceid = pic14_map[dev].deviceid;
    break;
   }
  }
  if (pic14_map[dev].deviceid == 0) {
   printf("%s: fatal error: unknown device: [%s]\n", __func__, k->devicename);
   pic14_standby(k);
   io_exit(k, 70);
  }
 }

 else {
  uint16_t deviceid;
  if ((pic14_conf.deviceid & (0x3000)) == (0x3000)) {




   deviceid = pic14_conf.deviceid;
  } else {
   deviceid = pic14_conf.deviceid & (0x3FE0);
  }
  for (dev = 0; pic14_map[dev].deviceid; ++dev) {
   if (pic14_map[dev].deviceid == deviceid) {
    break;
   }
  }
  if (pic14_map[dev].deviceid == 0) {






   if (pic14_conf.deviceid == 0x0000 || pic14_conf.deviceid == 0x3FFF) {
    printf("%s: fatal error: %s.\n",
     __func__, io_fault(k, pic14_conf.deviceid));
   } else {
    printf("%s: fatal error: device unknown: [%04X]\n",
     __func__, pic14_conf.deviceid);
   }
   pic14_standby(k);
   io_exit(k, 70);
  }
 }


 pic14_index = dev;


 for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i)
  pic14_conf.config[i] = pic14_read_program_memory_increment(k);


 if (pic14_map[pic14_index].ncalib) {
  for (uint32_t i = 0; i < pic14_map[pic14_index].ncalib; ++i)
   pic14_conf.calib[i] = pic14_read_program_memory_increment(k);
 }

 pic14_standby(k);
}






uint32_t
pic14_get_program_size(uint32_t *addr)
{
 *addr = 0;

 return pic14_map[pic14_index].flash;
}






uint32_t
pic14_get_data_size(uint32_t *addr)
{
 *addr = pic14_map[pic14_index].dataaddr;

 return pic14_map[pic14_index].eeprom;
}






uint32_t
pic14_read_program_memory_block(struct k8048 *k, uint32_t *data, uint32_t addr, uint32_t size)
{
 uint32_t i;

 pic14_program_verify(k);
 pic14_load_data_for_program_memory(k, 0);

 for (i = 0; i < addr; i++)
  pic14_increment_address(k);
 for (i = 0; i < size; i++)
  data[i] = (uint32_t)pic14_read_program_memory_increment(k);

 pic14_standby(k);

 return addr;
}






uint32_t
pic14_read_data_memory_block(struct k8048 *k, uint16_t *data, uint32_t addr, uint16_t size)
{
 uint32_t i;

 pic14_program_verify(k);
 pic14_load_data_for_data_memory(k, 0);

 addr -= pic14_map[pic14_index].dataaddr;
 for (i = 0; i < addr; i++)
  pic14_increment_address(k);
 for (i = 0; i < size; i++)
  data[i] = (uint16_t)pic14_read_data_memory_increment(k);

 pic14_standby(k);

 return addr;
}






uint32_t
pic14_write_word(struct k8048 *k, uint16_t region)
{
 switch (pic14_map[pic14_index].datasheet) {
 case (30262):
 case (30034):
 case (39025):
   if (region == (3) &&
    (pic14_conf.deviceid == (0x0560 + 0x03) || pic14_conf.deviceid == (0x0560 + 0x04))) {
    pic14_begin_programming_011000(k, (20000));
   } else {
    pic14_begin_programming_011000(k, (10000));
   }
   break;

 case (39589):
 case (39607):
 case (39603):
   pic14_begin_programming_011000(k, (10000));

   pic14_end_programming_010111(k, (100));
   break;

 case (40245):
   pic14_begin_programming_011000(k, (10000));

   pic14_end_programming_001110(k, (100));
   break;

 case (30189):
 case (41196):
 case (41204):
 case (41572):
 case (41287):
 case (41332):
 case (41409):
 case (41405):
 case (41573):
 case (41439):
 case (41397):
 case (41244):
 case (41390):
 case (41457):
 case (41442):
 case (41620):
 case (41642):
 case (40001743):
 case (41237):
 case (40001683):
 case (40001720):
 case (40001714):
 case (40001713):
   pic14_begin_programming_001000(k, (10000));
   break;

 case (30324):
 case (30492):
   pic14_begin_programming_001000(k, (10000));

   pic14_end_programming_001110(k, (100));
   break;

 case (41284):
 case (41191):

 case (41561):
 case (41686):
   pic14_begin_programming_011000(k, (10000));

   pic14_end_programming_001010(k, (100));
   break;

 default: printf("%s: information: unimplemented\n", __func__);
   return 0;
   break;
 }
 return 1;
}
# 1624 "pic14.c"
uint16_t
pic14_read_osccal(struct k8048 *k)
{
 if (pic14_map[pic14_index].datasheet != (41191)) {
  printf("%s: error: OSCCAL is not supported on this device\n", __func__);
  return 0;
 }

 pic14_program_verify(k);
 pic14_load_data_for_program_memory(k, 0);

 for (uint32_t i = 0; i < (0x03ff); i++)
  pic14_increment_address(k);
 uint16_t osccal = pic14_read_program_memory_increment(k);

 pic14_standby(k);





 return osccal;
}




uint32_t
pic14_write_osccal(struct k8048 *k, uint16_t osccal)
{
 if (pic14_map[pic14_index].datasheet != (41191)) {
  printf("%s: error: OSCCAL is not supported on this device\n", __func__);
  return 0;
 }

 pic14_program_verify(k);
 pic14_load_data_for_program_memory(k, osccal);






 for (uint16_t i = 0; i < (0x03ff); i++)
  pic14_increment_address(k);
 pic14_write_word(k, (1));
 uint16_t vdata = pic14_read_data_from_program_memory(k);

 pic14_standby(k);

 if (vdata != osccal) {
  printf("%s: error: OSCCAL write failed: read [%04X] expected [%04X]\n",
   __func__, vdata, osccal);
  return 0;
 }
 return 1;
}
# 1728 "pic14.c"
uint32_t
pic14_write_config(struct k8048 *k, uint16_t config1)
{
 uint16_t cdata[(3)], vdata[(3)] = {0};

 cdata[0] = config1;
 for (uint32_t i = 1; i < pic14_map[pic14_index].nconfig; ++i)
  cdata[i] = pic14_conf.config[i];
# 1744 "pic14.c"
 pic14_program_verify(k);
 pic14_load_configuration(k, cdata[0]);

 for (uint32_t i = 0; i < 6; ++i)
  pic14_increment_address(k);
 if (pic14_map[pic14_index].nconfig == 1) {
  pic14_increment_address(k);
  switch (pic14_map[pic14_index].datasheet) {
  case (39589):
   pic14_begin_programming_001000(k, (10000));
   break;
  case (30324):
  case (41196):
   pic14_load_data_for_program_memory(k, cdata[0]);
  default:pic14_write_word(k, (2));
   break;
  }
  vdata[0] = pic14_read_data_from_program_memory(k);
 }
 else for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
  pic14_increment_address(k);
  pic14_load_data_for_program_memory(k, cdata[i]);
  pic14_write_word(k, (2));
  vdata[i] = pic14_read_data_from_program_memory(k);
 }

 pic14_standby(k);

 if (pic14_map[pic14_index].datasheet == (41191)) {
  vdata[0] &= (0x01ff);
  cdata[0] &= (0x01ff);
 }
 for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
  if (vdata[i] != cdata[i]) {
   printf("%s: error: CONFIG%d write failed: read [%04X] expected [%04X]\n",
    __func__, i + 1, vdata[i], cdata[i]);
   return 0;
  }
 }
 return pic14_map[pic14_index].nconfig;
}
# 1797 "pic14.c"
uint16_t
pic14_getregion(uint16_t address)
{

 uint16_t code_high = pic14_map[pic14_index].flash - 1;

 if (address <= code_high) {
  return (1);
 }

 if (pic14_map[pic14_index].eeprom) {
  uint16_t data_low = pic14_map[pic14_index].dataaddr;
  uint16_t data_high = data_low + pic14_map[pic14_index].eeprom - 1;

  if (address >= data_low && address <= data_high) {
   return (3);
  }
 }

 uint16_t config_low = pic14_map[pic14_index].configaddr;
 uint16_t config_high = config_low + 7 + pic14_map[pic14_index].nconfig - 1;

 if (address >= config_low && address <= config_high) {
  return (2);
 }
 printf("%s: warning: address unsupported [%04X]\n",
  __func__, address);
 return (0);
}






uint16_t
pic14_initregion(struct k8048 *k, uint16_t region, uint16_t *address)
{
 switch (region) {
 case (1):
  pic14_load_data_for_program_memory(k, 0);
  *address = 0;
  return region;
  break;
 case (2):
  pic14_load_configuration(k, 0);
  *address = pic14_map[pic14_index].configaddr;
  return region;
  break;
 case (3):
  pic14_load_data_for_data_memory(k, 0);
  *address = pic14_map[pic14_index].dataaddr;
  return region;
  break;
 default:printf("%s: warning: region unsupported [%d]\n",
  __func__, region);
  break;
 }
 return (0);
}




void
pic14_loadregion(struct k8048 *k, uint16_t region, uint16_t word)
{
 switch (region) {
 case (1):
 case (2):
  pic14_load_data_for_program_memory(k, word);
  break;
 case (3):
  pic14_load_data_for_data_memory(k, word);
  break;
 default:printf("%s: warning: region unsupported [%d]\n",
  __func__, region);
  break;
 }
}
# 1887 "pic14.c"
void
pic14_programregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{
 static int write_pending = 0;
# 1900 "pic14.c"
 if (region == (2) && address >= (pic14_map[pic14_index].configaddr + 4)) {
  uint16_t config = address - pic14_map[pic14_index].configaddr;


  if (config == (7)) {
   if (pic14_map[pic14_index].datasheet == (41191)) {
    data = (data & (0x01ff)) | (pic14_conf.config[0] & (0x3000));
   }
   pic14_conf.config[0] = data;
   return;
  }

  if (config == (8) && pic14_map[pic14_index].nconfig >= 2) {
   pic14_conf.config[1] = data;
   return;
  }

  if (config == (9) && pic14_map[pic14_index].nconfig >= 3) {
   pic14_conf.config[2] = data;
   return;
  }
  printf("%s: warning: config word ignored: word [%04X] address [%04X]\n",
   __func__, data, address);
  return;
 }




 if (region == (1)) {
  if (data != (0xFFFF)) {

   if (pic14_map[pic14_index].datasheet == (41191)) {
    if (address == (0x03ff)) {
     printf("%s: warning: OSCCAL word ignored: word [%04X] address [%04X]\n",
      __func__, data, address);
     return;
    }
   }

   pic14_loadregion(k, (1), data);
   write_pending = 1;
  }

  uint16_t mask = pic14_map[pic14_index].nlatches - 1;
  if ((address & mask) == mask) {
   if (write_pending) {
    pic14_write_word(k, (1));
    write_pending = 0;
   }
  }
  return;
 }






 pic14_loadregion(k, region, data);


 pic14_write_word(k, region);
}






uint32_t
pic14_verifyregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{
 uint16_t vdata = 0;

 switch (region) {
 case (1):
 case (2):
  vdata = pic14_read_data_from_program_memory(k);
  break;
 case (3):
  vdata = pic14_read_data_from_data_memory(k);
  break;
 default:printf("%s: warning: region unsupported [%d]\n",
  __func__, region);
  return 1;
  break;
 }
 if (pic14_map[pic14_index].datasheet == (41191)) {
  if (address == (0x2007)) {
   vdata &= (0x01ff);
   data &= (0x01ff);
  }
 }
 if (vdata != data) {
  printf("%s: error: read [%04X] expected [%04X] at [%04X]\n",
   __func__, vdata, data, address);
  return 1;
 }
 return 0;
}
# 2011 "pic14.c"
void
pic14_program(struct k8048 *k, char *filename, int blank)
{
 uint16_t hex_address, PC_address = 0, wdata;
 uint16_t new_region, current_region = (0);
 uint16_t total = 0;


 if (!inhx32(k, filename, 2))
  return;


 if (blank)
  pic14_bulk_erase(k, (0xFFFF), (0xFFFE));






 for (uint32_t i = 0; i < k->count; i++) {
  hex_address = (k->pdata[i]->address >> 1);
  new_region = pic14_getregion(hex_address);
  if (new_region == (0))
   continue;
  if (new_region != current_region) {
   if (current_region == (1))
    pic14_programregion(k, (0xFFFF), (1), (0xFFFF));
   pic14_program_verify(k);
   if (pic14_initregion(k, new_region, &PC_address) == (0))
    continue;
   current_region = new_region;
  }


  while (hex_address > PC_address) {
   if (current_region == (1))
    pic14_programregion(k, PC_address, (1), (0xFFFF));
   PC_address++;
   pic14_increment_address(k);
  }


  for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
   wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
   wdata &= (0x3FFF);
   pic14_programregion(k, PC_address, current_region, wdata);
   PC_address++;
   pic14_increment_address(k);
   total++;
  }
 }
 if (current_region == (1))
  pic14_programregion(k, (0xFFFF), (1), (0xFFFF));

 pic14_standby(k);


 if (blank)
  pic14_write_config(k, pic14_conf.config[0]);

 printf("Total: %u\n", total);

 inhx32_free(k);

 if (pic14_map[pic14_index].datasheet == (40245)) {
  printf("%s: information: The %s must be power cycled before verification.\n",
   __func__, pic14_map[pic14_index].devicename);
 }
}




uint32_t
pic14_verify(struct k8048 *k, char *filename)
{
 uint16_t hex_address, PC_address = 0, wdata;
 uint16_t new_region, current_region = (0);
 uint16_t fail = 0, total = 0;


 if (!inhx32(k, filename, 2))
  return 1;






 for (uint32_t i = 0; i < k->count; i++) {
  hex_address = (k->pdata[i]->address >> 1);
  new_region = pic14_getregion(hex_address);
  if (new_region == (0))
   continue;
  if (new_region != current_region) {
   pic14_program_verify(k);
   if (pic14_initregion(k, new_region, &PC_address) == (0))
    continue;
   current_region = new_region;
  }


  while (hex_address > PC_address) {
   PC_address++;
   pic14_increment_address(k);
  }


  for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
   wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
   wdata &= (0x3FFF);
   fail += pic14_verifyregion(k, PC_address++, current_region, wdata);
   pic14_increment_address(k);
   total++;
  }
 }
 pic14_standby(k);

 printf("Total: %u Pass: %u Fail: %u\n", total, total-fail, fail);

 inhx32_free(k);

 return fail;
}
# 2146 "pic14.c"
void
pic14_dumpdeviceid(struct k8048 *k)
{
 printf("[0000] [PROGRAM]  %04X WORDS", pic14_map[pic14_index].flash);
 if (pic14_map[pic14_index].erasesize) {
  printf(" (%04X ROWS OF %04X WORDS)",
   pic14_map[pic14_index].flash / pic14_map[pic14_index].erasesize,
   pic14_map[pic14_index].erasesize);
 }
 printf("\n");

 if (pic14_map[pic14_index].datasheet == (41191))
  pic14_dumposccal(k);

 for (uint32_t i = 0; i < 4; i++) {
  printf("[%04X] [USERID%d]  ", pic14_map[pic14_index].configaddr + i, i);
  printf("%04X %c\n", pic14_conf.userid[i], ((((0xFF & pic14_conf.userid[i]) >= ' ' && (0xFF & pic14_conf.userid[i]) < 127) ? (0xFF & pic14_conf.userid[i]) : ('.'))));
 }

 printf("[%04X] [RESERVED] %04X\n", pic14_map[pic14_index].configaddr + 4, pic14_conf.reserved);

 if (k->devicename[0]) {
  printf("[%04X] [RESERVED] %04X\n",
   pic14_map[pic14_index].configaddr + 5, pic14_conf.revisionid);
  printf("       [DEVICEID]");
 } else if ((pic14_conf.deviceid & (0x3000)) == (0x3000)) {




  printf("[%04X] [REVISION] %04X REV:%03X\n",
   pic14_map[pic14_index].configaddr + 5,
   pic14_conf.revisionid, pic14_conf.revisionid & (0x0FFF));
  printf("[%04X] [DEVICEID] %04X DEV:%04X",
   pic14_map[pic14_index].configaddr + 6,
   pic14_conf.deviceid, pic14_conf.deviceid);
 } else {
  printf("[%04X] [RESERVED] %04X\n",
   pic14_map[pic14_index].configaddr + 5,
   pic14_conf.reserved);
  printf("[%04X] [DEVICEID] %04X DEV:%03X REV:%02X",
   pic14_map[pic14_index].configaddr + 6,
   pic14_conf.deviceid,
   pic14_conf.deviceid & (0x3FE0),
   pic14_conf.deviceid & (0x001F));
 }
 printf(" %s\n", pic14_map[pic14_index].devicename);

 pic14_dumpconfig(k, (0));

 if (pic14_map[pic14_index].ncalib) {
  uint16_t caddr = pic14_map[pic14_index].configaddr +
   (7) + pic14_map[pic14_index].nconfig;

  if (pic14_map[pic14_index].ncalib == 1) {
   printf("[%04X] [CALIB]    %04X\n", caddr, pic14_conf.calib[0]);
  } else for (uint32_t i = 0; i < pic14_map[pic14_index].ncalib; ++i) {
   if (i < 9)
    printf("[%04X] [CALIB%d]   %04X\n", caddr++, i + 1, pic14_conf.calib[i]);
   else
    printf("[%04X] [CALIB%d]  %04X\n", caddr++, i + 1, pic14_conf.calib[i]);
  }
 }

 if (pic14_map[pic14_index].eeprom) {
  printf("[%04X] [DATA]     %04X BYTES\n",
   pic14_map[pic14_index].dataaddr, pic14_map[pic14_index].eeprom);
 }
}




void
pic14_dumposccal(struct k8048 *k)
{
 if (pic14_map[pic14_index].datasheet != (41191)) {
  printf("%s: error: OSCCAL is not supported on this device\n", __func__);
 } else {
  printf("[%04X] [OSCCAL]   %04X\n", (0x03ff), pic14_read_osccal(k));
 }
}




void
pic14_dumpconfig(struct k8048 *k, int mode)
{
 if (pic14_map[pic14_index].nconfig == 1) {
  printf("[%04X] [CONFIG]   %04X\n",
   pic14_map[pic14_index].configaddr + (7),
    pic14_conf.config[0]);
 } else for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
  printf("[%04X] [CONFIG%d]  %04X\n",
   i + pic14_map[pic14_index].configaddr + (7), i + 1,
    pic14_conf.config[i]);
 }
# 2264 "pic14.c"
}
# 2799 "pic14.c"
void
pic14_dumphexcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
 uint32_t i, j, nlines = 0;

 for (i = 0; i < size; address += 8, i += 8) {
  if (pic_mtcode((0x3FFF), 8, &data[i]))
   continue;
  printf("[%04X] ", address);
  for (j = 0; j < 8; ++j)
   printf("%04X ", data[i + j] & (0x3FFF));
  for (j = 0; j < 8; ++j)
   putchar(((((0xFF & data[i + j]) >= ' ' && (0xFF & data[i + j]) < 127) ? (0xFF & data[i + j]) : ('.'))));
  putchar('\n');
  nlines++;
 }
 if (!nlines)
  printf("%s: information: program flash empty\n", __func__);
}




void
pic14_dumpinhxcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
 uint32_t i, j;


 pic_dumpaddr(0, 1);

 for (i = 0; i < size; address += 8, i += 8) {
  if (pic_mtcode((0x3FFF), 8, &data[i]))
   continue;

  uint8_t cc, hb, lb;
  hb = address >> 7;
  lb = address << 1;
  printf(":%02X%02X%02X00", 16, hb, lb);
  cc = 16 + hb + lb + 0x00;
  for (j = 0; j < 8; ++j) {
   lb = data[i + j];
   hb = data[i + j] >> 8;
   printf("%02X%02X", lb, hb);
   cc = cc + lb + hb;
  }
  printf("%02X\n", (0x0100 - cc) & 0xFF);
 }
}




void
pic14_dumphexdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
 uint32_t i, j, nlines = 0;

 for (i = 0; i < size; address += 16, i += 16) {
  if (pic_mtdata(0xFF, 16, &data[i]))
   continue;
  printf("[%04X] ", address);
  for (j = 0; j < 16; ++j)
   printf("%02X ", data[i + j]);
  for (j = 0; j < 16; ++j)
   putchar(((((0xFF & data[i + j]) >= ' ' && (0xFF & data[i + j]) < 127) ? (0xFF & data[i + j]) : ('.'))));
  putchar('\n');
  nlines++;
 }
 if (!nlines)
  printf("%s: information: data eeprom empty\n", __func__);
}




void
pic14_dumpinhxdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
 uint32_t i, j;


 pic_dumpaddr(address << 1, 1);

 for (i = 0; i < size; address += 8, i += 8) {
  if (pic_mtdata(0xFF, 8, &data[i]))
   continue;

  uint8_t cc, hb, lb;
  hb = address >> 7;
  lb = address << 1;
  printf(":%02X%02X%02X00", 16, hb, lb);
  cc = 16 + hb + lb + 0x00;
  for (j = 0; j < 8; ++j) {
   lb = data[i + j];
   printf("%02X00", lb);
   cc = cc + lb + 0x00;
  }
  printf("%02X\n", (0x0100 - cc) & 0xFF);
 }
}




void
pic14_dumpdevice(struct k8048 *k)
{
 uint32_t i;


 pic_dumpaddr(pic14_map[pic14_index].configaddr << 1, 1);


 for (i = 0; i < 4; ++i)
  pic_dumpword16(pic14_map[pic14_index].configaddr + i, pic14_conf.userid[i]);


 for (i = 0; i < pic14_map[pic14_index].nconfig; ++i)
  pic_dumpword16(i + pic14_map[pic14_index].configaddr + (7),
   pic14_conf.config[i]);
}
