def _make_variables_impl(ctx):
    return [platform_common.TemplateVariableInfo({
        "WORKSPACE_NAME": ctx.workspace_name,
    })]

make_variables = rule(_make_variables_impl)
"""Provides values for make variable substitution.

E.g.

>>> da_haskell_library(
        ...
        complier_flags = ['-DWORKSPACE="$(WORKSPACE_NAME)"'],
    )
"""
