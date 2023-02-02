/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_19(char*, char *);
IKI_DLLESPEC extern void execute_20(char*, char *);
IKI_DLLESPEC extern void execute_65(char*, char *);
IKI_DLLESPEC extern void execute_22(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_277(char*, char *);
IKI_DLLESPEC extern void execute_278(char*, char *);
IKI_DLLESPEC extern void execute_279(char*, char *);
IKI_DLLESPEC extern void execute_280(char*, char *);
IKI_DLLESPEC extern void execute_281(char*, char *);
IKI_DLLESPEC extern void execute_282(char*, char *);
IKI_DLLESPEC extern void execute_283(char*, char *);
IKI_DLLESPEC extern void execute_284(char*, char *);
IKI_DLLESPEC extern void execute_285(char*, char *);
IKI_DLLESPEC extern void execute_286(char*, char *);
IKI_DLLESPEC extern void execute_287(char*, char *);
IKI_DLLESPEC extern void execute_288(char*, char *);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_291(char*, char *);
IKI_DLLESPEC extern void execute_292(char*, char *);
IKI_DLLESPEC extern void execute_293(char*, char *);
IKI_DLLESPEC extern void execute_294(char*, char *);
IKI_DLLESPEC extern void execute_295(char*, char *);
IKI_DLLESPEC extern void execute_296(char*, char *);
IKI_DLLESPEC extern void execute_297(char*, char *);
IKI_DLLESPEC extern void execute_298(char*, char *);
IKI_DLLESPEC extern void execute_299(char*, char *);
IKI_DLLESPEC extern void execute_300(char*, char *);
IKI_DLLESPEC extern void execute_68(char*, char *);
IKI_DLLESPEC extern void vlog_timingcheck_execute_0(char*, char*, char*);
IKI_DLLESPEC extern void execute_25(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_27(char*, char *);
IKI_DLLESPEC extern void execute_72(char*, char *);
IKI_DLLESPEC extern void execute_73(char*, char *);
IKI_DLLESPEC extern void execute_74(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_76(char*, char *);
IKI_DLLESPEC extern void execute_77(char*, char *);
IKI_DLLESPEC extern void execute_78(char*, char *);
IKI_DLLESPEC extern void execute_79(char*, char *);
IKI_DLLESPEC extern void execute_80(char*, char *);
IKI_DLLESPEC extern void execute_81(char*, char *);
IKI_DLLESPEC extern void execute_82(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void execute_75(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_33(char*, char *);
IKI_DLLESPEC extern void execute_34(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_84(char*, char *);
IKI_DLLESPEC extern void execute_85(char*, char *);
IKI_DLLESPEC extern void execute_86(char*, char *);
IKI_DLLESPEC extern void execute_87(char*, char *);
IKI_DLLESPEC extern void execute_88(char*, char *);
IKI_DLLESPEC extern void execute_89(char*, char *);
IKI_DLLESPEC extern void execute_90(char*, char *);
IKI_DLLESPEC extern void execute_91(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_93(char*, char *);
IKI_DLLESPEC extern void execute_94(char*, char *);
IKI_DLLESPEC extern void execute_95(char*, char *);
IKI_DLLESPEC extern void execute_96(char*, char *);
IKI_DLLESPEC extern void execute_97(char*, char *);
IKI_DLLESPEC extern void execute_98(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_1(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_2(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_79(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_80(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_81(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_82(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_83(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_84(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_85(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_86(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_87(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_88(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_89(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_90(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_91(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_92(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_93(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_94(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_95(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_96(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_97(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_98(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_99(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_100(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_101(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_102(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_27(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_28(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_29(char*, char *);
IKI_DLLESPEC extern void timing_checker_condition_m_b7eef225d7319ad8_67151b0a_30(char*, char *);
IKI_DLLESPEC extern void execute_117(char*, char *);
IKI_DLLESPEC extern void execute_122(char*, char *);
IKI_DLLESPEC extern void execute_123(char*, char *);
IKI_DLLESPEC extern void execute_124(char*, char *);
IKI_DLLESPEC extern void execute_125(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_128(char*, char *);
IKI_DLLESPEC extern void execute_129(char*, char *);
IKI_DLLESPEC extern void execute_127(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_131(char*, char *);
IKI_DLLESPEC extern void execute_132(char*, char *);
IKI_DLLESPEC extern void execute_133(char*, char *);
IKI_DLLESPEC extern void execute_134(char*, char *);
IKI_DLLESPEC extern void execute_130(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[166] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_19, (funcp)execute_20, (funcp)execute_65, (funcp)execute_22, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)execute_299, (funcp)execute_300, (funcp)execute_68, (funcp)vlog_timingcheck_execute_0, (funcp)execute_25, (funcp)execute_71, (funcp)execute_27, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_30, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_75, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_1, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_2, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_79, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_80, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_81, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_82, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_83, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_84, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_85, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_86, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_87, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_88, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_89, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_90, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_91, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_92, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_93, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_94, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_95, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_96, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_97, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_98, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_99, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_100, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_101, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_102, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_27, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_28, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_29, (funcp)timing_checker_condition_m_b7eef225d7319ad8_67151b0a_30, (funcp)execute_117, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_40, (funcp)execute_128, (funcp)execute_129, (funcp)execute_127, (funcp)execute_43, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_130, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_98, (funcp)transaction_150, (funcp)transaction_178, (funcp)transaction_206};
const int NumRelocateId= 166;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_pulse_gen_time_impl/xsim.reloc",  (void **)funcTab, 166);
	iki_vhdl_file_variable_register(dp + 52144);
	iki_vhdl_file_variable_register(dp + 52200);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_pulse_gen_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_pulse_gen_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 57360, dp + 58056, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 57472, dp + 58336, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/test_pulse_gen_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_pulse_gen_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_pulse_gen_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
