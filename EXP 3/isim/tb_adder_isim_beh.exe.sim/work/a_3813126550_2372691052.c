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
static const char *ng0 = "C:/Users/ASHISH KUMAR/Desktop/DD LAB/EXP 3/cla_tb.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3813126550_2372691052_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    int t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int64 t21;
    int t22;
    int t23;
    int t24;
    int t25;
    unsigned char t26;
    int t27;
    int t28;
    char *t29;
    int t30;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5596);
    *((int *)t2) = 0;
    t3 = (t0 + 5600);
    *((int *)t3) = 15;
    t7 = 0;
    t8 = 15;

LAB4:    if (t7 <= t8)
        goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5612);
    *((int *)t2) = 0;
    t3 = (t0 + 5616);
    *((int *)t3) = 15;
    t7 = 0;
    t8 = 15;

LAB25:    if (t7 <= t8)
        goto LAB26;

LAB28:    xsi_set_current_line(64, ng0);

LAB48:    *((char **)t1) = &&LAB49;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 5604);
    *((int *)t4) = 0;
    t5 = (t0 + 5608);
    *((int *)t5) = 15;
    t9 = 0;
    t10 = 15;

LAB8:    if (t9 <= t10)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 5596);
    t7 = *((int *)t2);
    t3 = (t0 + 5600);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB7;

LAB24:    t9 = (t7 + 1);
    t7 = t9;
    t4 = (t0 + 5596);
    *((int *)t4) = t7;
    goto LAB4;

LAB9:    xsi_set_current_line(44, ng0);
    t6 = (t0 + 5596);
    t12 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, *((int *)t6), 4);
    t13 = (t11 + 12U);
    t14 = *((unsigned int *)t13);
    t14 = (t14 * 1U);
    t15 = (4U != t14);
    if (t15 == 1)
        goto LAB12;

LAB13:    t16 = (t0 + 3440);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t12, 4U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5604);
    t3 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, *((int *)t2), 4);
    t4 = (t11 + 12U);
    t14 = *((unsigned int *)t4);
    t14 = (t14 * 1U);
    t15 = (4U != t14);
    if (t15 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 3504);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(46, ng0);
    t21 = (10 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t21);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB10:    t2 = (t0 + 5604);
    t9 = *((int *)t2);
    t3 = (t0 + 5608);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB11;

LAB23:    t22 = (t9 + 1);
    t9 = t22;
    t4 = (t0 + 5604);
    *((int *)t4) = t9;
    goto LAB8;

LAB12:    xsi_size_not_matching(4U, t14, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(4U, t14, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t15 = *((unsigned char *)t3);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5552U);
    t2 = xsi_base_array_concat(t2, t11, t5, (char)99, t15, (char)97, t4, t6, (char)101);
    t22 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t11);
    t12 = (t0 + 5596);
    t13 = (t0 + 5604);
    t23 = *((int *)t12);
    t24 = *((int *)t13);
    t25 = (t23 + t24);
    t26 = (t22 != t25);
    if (t26 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(48, ng0);
    t16 = (t0 + 1832U);
    t17 = *((char **)t16);
    t27 = *((int *)t17);
    t28 = (t27 + 1);
    t16 = (t0 + 3568);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t29 = *((char **)t20);
    *((int *)t29) = t28;
    xsi_driver_first_trans_fast(t16);
    goto LAB21;

LAB26:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 5620);
    *((int *)t4) = 0;
    t5 = (t0 + 5624);
    *((int *)t5) = 15;
    t9 = 0;
    t10 = 15;

LAB29:    if (t9 <= t10)
        goto LAB30;

LAB32:
LAB27:    t2 = (t0 + 5612);
    t7 = *((int *)t2);
    t3 = (t0 + 5616);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB28;

LAB45:    t9 = (t7 + 1);
    t7 = t9;
    t4 = (t0 + 5612);
    *((int *)t4) = t7;
    goto LAB25;

LAB30:    xsi_set_current_line(56, ng0);
    t6 = (t0 + 5612);
    t12 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, *((int *)t6), 4);
    t13 = (t11 + 12U);
    t14 = *((unsigned int *)t13);
    t14 = (t14 * 1U);
    t15 = (4U != t14);
    if (t15 == 1)
        goto LAB33;

LAB34:    t16 = (t0 + 3440);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t12, 4U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5620);
    t3 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, *((int *)t2), 4);
    t4 = (t11 + 12U);
    t14 = *((unsigned int *)t4);
    t14 = (t14 * 1U);
    t15 = (4U != t14);
    if (t15 == 1)
        goto LAB35;

LAB36:    t5 = (t0 + 3504);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(58, ng0);
    t21 = (10 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t21);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB31:    t2 = (t0 + 5620);
    t9 = *((int *)t2);
    t3 = (t0 + 5624);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB32;

LAB44:    t22 = (t9 + 1);
    t9 = t22;
    t4 = (t0 + 5620);
    *((int *)t4) = t9;
    goto LAB29;

LAB33:    xsi_size_not_matching(4U, t14, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(4U, t14, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t15 = *((unsigned char *)t3);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5552U);
    t2 = xsi_base_array_concat(t2, t11, t5, (char)99, t15, (char)97, t4, t6, (char)101);
    t22 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t11);
    t12 = (t0 + 5612);
    t13 = (t0 + 5620);
    t23 = *((int *)t12);
    t24 = *((int *)t13);
    t25 = (t23 + t24);
    t27 = (t25 + 1);
    t26 = (t22 != t27);
    if (t26 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB31;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB41:    xsi_set_current_line(60, ng0);
    t16 = (t0 + 1832U);
    t17 = *((char **)t16);
    t28 = *((int *)t17);
    t30 = (t28 + 1);
    t16 = (t0 + 3568);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t29 = *((char **)t20);
    *((int *)t29) = t30;
    xsi_driver_first_trans_fast(t16);
    goto LAB42;

LAB46:    goto LAB2;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

}


extern void work_a_3813126550_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3813126550_2372691052_p_0};
	xsi_register_didat("work_a_3813126550_2372691052", "isim/tb_adder_isim_beh.exe.sim/work/a_3813126550_2372691052.didat");
	xsi_register_executes(pe);
}
