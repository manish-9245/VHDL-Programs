/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/VHDL programming/ALL/COMP1bit/COMP1.vhd";



static void work_a_3123227664_1446275585_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t7 = (t5 == (unsigned char)2);
    if (t7 == 1)
        goto LAB18;

LAB19:    t4 = (unsigned char)0;

LAB20:    if (t4 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1032U);
    t9 = *((char **)t2);
    t15 = *((unsigned char *)t9);
    t16 = (t15 == (unsigned char)3);
    if (t16 == 1)
        goto LAB21;

LAB22:    t14 = (unsigned char)0;

LAB23:    t1 = t14;

LAB17:    if (t1 != 0)
        goto LAB13;

LAB14:
LAB3:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 3712);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(15, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(16, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 3712);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB10:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB12;

LAB13:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1352U);
    t11 = *((char **)t2);
    t19 = *((unsigned char *)t11);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB24;

LAB26:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB27;

LAB28:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB29;

LAB30:
LAB25:    goto LAB3;

LAB15:    t1 = (unsigned char)1;
    goto LAB17;

LAB18:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t8 = *((unsigned char *)t6);
    t13 = (t8 == (unsigned char)2);
    t4 = t13;
    goto LAB20;

LAB21:    t2 = (t0 + 1192U);
    t10 = *((char **)t2);
    t17 = *((unsigned char *)t10);
    t18 = (t17 == (unsigned char)3);
    t14 = t18;
    goto LAB23;

LAB24:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 3712);
    t12 = (t2 + 56U);
    t21 = *((char **)t12);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB25;

LAB27:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3776);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB25;

LAB29:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3840);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB25;

}


extern void work_a_3123227664_1446275585_init()
{
	static char *pe[] = {(void *)work_a_3123227664_1446275585_p_0};
	xsi_register_didat("work_a_3123227664_1446275585", "isim/ncc4_tb_isim_beh.exe.sim/work/a_3123227664_1446275585.didat");
	xsi_register_executes(pe);
}
