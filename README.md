# XMR-STAK-CUDA-8-2.7.x
Allows mining on GTX 400 500 and Tesla Series of Fermi cards. Supports v2 algorithms.
12/17/2018 Build version 1.1

Problem:
 If you have Fermi (Tesla) cards or GTX 400/500 cards and attempt to run CUDA 9.1,9.2, or 10. XMR-STAK just refuses to format the CUDA code for that chip architecture.

Solution: 
So this is the build that resolves this, and allows the older Nvidia cards to mine all the current new variant 2 algos also.
Technically, not a single line of code was changed, just how it was built with the CUDA 8 toolkit installed and build with their documented script.


 These are the fastest settings found for Tesla M2050, M2070, GTX 400, and GTX 500 series.
 It would be faster to use the CUDA drivers rather than open CL, but it's here for compatability sake.
 You must use CUDA 8 drivers which would be 385.69 for GTX 400/500 series with Teslas,
 or 386.28 for Tesla only cards in Windows 7 or 10.
 You don't need to install the 3D stereo driver and viewer, nor the Geforce Experience options.
 You don't need to install PhysX since you are mining and not gaming.
 Besides you don't want Geforce Experience constantly reminding you to update your driver,
 when you CANT since that would break 2.7.1 with cuda 8 support. Yes, it does break it. 
 I don't plan on supporting 32 bit builds of Windows OS. Nor Windows 8.1, just no. Nope.
 It's a good idea to not reuse your config.cfg, cpu.txt, or pools.txt from the older versions of xmr-stak and start from fresh.
 I did leave some default versions of the same files as a reference tool for what I know that works.
 The included files, especially nvidia.txt is just for reference of the fastest settings for the Fermi GTX 400-500 series of cards and Tesla cards.

 Included Visual C++ Runtime installer that is needed to run XMR-STAK if you haven't already installed it. See VC_redist.x64_2017.exe. 
 I included the OpenCL.dll and OpenCL64.dll that comes from the CUDA 8 toolkit so as to not be confused with the AMD ones floating around out there.

 Keep on mining and the shiny side up!
 -Argonator www.arqma.com 

Tested nvidia.txt settings for Fermi GTX 400/500 and Tesla M/S Series cards.
Cut and paste these settings for the ones you have in your rig after running xmr stak for the first time to determine the order of the cards installed by index number.
===========================================================================
"gpu_threads_conf" :

[

  // gpu: Tesla M2050 architecture: 20

  //      memory: 2927/3019 MiB

  //      smx: 14

  { "index" : 0,

    "threads" : 32, "blocks" : 40,

    "bfactor" : 6, "bsleep" :  15,

    "affine_to_cpu" : false, "sync_mode" : 3,

    "mem_mode" : 1,

  },

  // gpu: GeForce GTX 580 architecture: 20

  //      memory: 1208/1536 MiB

  //      smx: 16

  { "index" : 1,

    "threads" : 32, "blocks" : 32,

    "bfactor" : 6, "bsleep" :  25,

    "affine_to_cpu" : false, "sync_mode" : 3,

    "mem_mode" : 1,

  },

  // gpu: GeForce GTX 465 architecture: 20

  //      memory: 790/1024 MiB

  //      smx: 11

  { "index" : 2,

    "threads" : 22, "blocks" : 33,

    "bfactor" : 6, "bsleep" :  25,

    "affine_to_cpu" : false, "sync_mode" : 3,

    "mem_mode" : 1,

  },

  // gpu: Tesla M2070 architecture: 20

  //      memory: 5988/6081 MiB

  //      smx: 14

  { "index" : 3,

    "threads" : 32, "blocks" : 40,

    "bfactor" : 6, "bsleep" :  15,

    "affine_to_cpu" : false, "sync_mode" : 3,

    "mem_mode" : 1,

  },



],

======================================================================


-Tested amd.txt for opencl use, not recommended for throughput, but compatible:
============================================================================
"gpu_threads_conf" : [

  // gpu: Tesla M2050  compute units: 14

  // memory:2891|3019|2891 MiB (used per thread|max per alloc|total free)

  { "index" : 0,

    "intensity" : 896, "worksize" : 8,

    "affine_to_cpu" : false, "strided_index" : 1, "mem_chunk" : 2,

    "unroll" : 8, "comp_mode" : false, "interleave" : 50

  },

  // gpu: GeForce GTX 580  compute units: 16

  // memory:1408|1536|1408 MiB (used per thread|max per alloc|total free)

  { "index" : 1,

    "intensity" : 896, "worksize" : 8,

    "affine_to_cpu" : false, "strided_index" : 1, "mem_chunk" : 2,

    "unroll" : 8, "comp_mode" : false, "interleave" : 50

  },

  // gpu: GeForce GTX 465  compute units: 11

  // memory:896|1024|896 MiB (used per thread|max per alloc|total free)

  { "index" : 2,

    "intensity" : 880, "worksize" : 8,

    "affine_to_cpu" : false, "strided_index" : 1, "mem_chunk" : 2,

    "unroll" : 8, "comp_mode" : false, "interleave" : 50

  },

  // gpu: Tesla M2070  compute units: 14

  // memory:5953|6081|5953 MiB (used per thread|max per alloc|total free)

  { "index" : 3,

    "intensity" : 896, "worksize" : 8,

    "affine_to_cpu" : false, "strided_index" : 1, "mem_chunk" : 2,

    "unroll" : 8, "comp_mode" : false, "interleave" : 50

  },



],



/*

 * number of rounds per intensity performed to find the best intensity settings

 *

 * WARNING: experimental option

 *

 * 0 = disable auto tuning

 * 10 or higher = recommended value if you don't already know the best intensity

 */

"auto_tune" : 11,
// ? what setting is right ?


/*

 * Platform index. This will be 0 unless you have different OpenCL platform - eg. AMD and Intel.

 */

"platform_index" : 0,


===================================================================

Donations glady accept for re-releasing a CUDA 8 compatible build for legacy cards.
arqma address: ar2x9XfDtzybuHWVdsKq8kNxFir6ApAKW9A5L7NCWo5SACsMu9BNQNkeQN6PNVsidEXaLrpQR1abkFVGUtMmYpr31k4cU8Lzr
XMR address: 42r2MZtFvtvDUyqzhvsSr2cxEaN1K9vPuhiNUdUZRFyQ2qgSecmdNTUBLwb3vTQt1KLY15Rqc4zwgMTh8QR1YfJ75Tz5jDK
-eof
