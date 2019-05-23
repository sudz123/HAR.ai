HAR_v3.1

This is the modified working version for generating activity description in the form of graph representations.
The graph representations are then used to generate precomputed kernel matrices using the proposed graph kernel.
The kernel matrices are then used in libsvm to classify the activities.


CreateGfile, CreateGfileWrap, combineGfile
		generate activity description in the form of graph representations, automated batch input from ../_act_desc_v3/<dataset>/
		using single to function: CreateGfileWrap('<dataset>')	
graphKernelFunc : Function to compute kernel matrix, modified to take string input and automated reading of classes from actlist.txt
computeAll: Wrapper function to graphKernelFunc(); calls runSVMGraphK to perform classification using the precomputed kernel matrix
			Performs grid search to find best wtp, wdr, wds, ins, del values
computeAll_wt: Wrapper function to graphKernelFunc(); calls runSVM_GK_rand10cv to perform classification using the precomputed kernel matrix
			Performs grid search to find best wtp, wdr, wds values for some fixed ins,del values (ins, del values manually fixed)
computeOne: Wrapper function to graphKernelFunc(); calls runSVM_GK_rand10cv to perform classification using the precomputed kernel matrix
			Does not perform grid search; calls libsvm for fixed wtp, wdr, wds, ins, del values (ins, del values manually fixed)
computeAll_wt_cv: modified computeAll_wt
			Wrapper function to graphKernelFunc(); calls both runSVM_GK_loocv or runSVM_GK_rand10cv to perform classification using the precomputed kernel matrix
			Performs grid search to find best wtp, wdr, wds values for some fixed ins,del values (ins, del values manually fixed)
            Results recorded in \GraphKernel_v4\_outputkmat\<dataset>_<ktype>_<rand10cv>.txt 
							and \GraphKernel_v4\_outputkmat\<dataset>_<ktype>_<loocv>.txt
computeAllWrap: modified computeAll
				Wrapper function to computeAll_wt_cv
				Performs additional grid search to compute best ins, del values
				Results recorded in \GraphKernel_v4\_outputkmat\<dataset>_<ktype>_<rand10cv>.txt 
								and \GraphKernel_v4\_outputkmat\<dataset>_<ktype>_<loocv>.txt

\GraphKernel_v4\: contains two versions of kActGraph - kActGraphX and kActGraphY; 
                    kActGraphX computes kernel values using skeletal information
                    kActGraphY computes kernel values using i-factor