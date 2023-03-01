One way to do this is to define a toolchain. Unfortunately, I do not know how to make this toolchain cross-compiler compatible. 

```
cc_toolchain(
    name = "asm_toolchain",
    toolchain_identifier = "asm-toolchain",
    toolchain_config = ":asm_toolchain_config"
)

cc_test(
    
)
```

Perhaps your toolchain is for `gcc` compilation. So your config will look something like the below.

```
load("@rules_cc//cc:defs.bzl", "ACTION_NAMES")

action_configs = [
    action_config (
        config_name = ACTION_NAMES.cpp_link_executable,
        action_name = ACTION_NAMES.cpp_link_executable,
        tools = [
            tool(
                with_features = [
                    with_feature(features=["generate-debug-symbols"]),
                ],
                tool_path = "toolchain/mac/ld-with-dsym-packaging",
            ),
            tool (tool_path = "toolchain/mac/ld"),
        ],
    ),
]

features = [
    feature(
        name = "generate-debug-symbols",
        flag_sets = [
            flag_set (
                actions = [
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile
                ],
                flag_groups = [
                    flag_group(
                        flags = ["-save-temps"],
                    ),
                ],
            )
        ],
        implies = ["unbundle-debuginfo"],
   ),
]
```