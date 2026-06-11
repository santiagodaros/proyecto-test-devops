# Proyecto de Prueba DevOps

Este es un repositorio para probar las skills centralizadas de [devops-core-pipelines](https://github.com/santiagodaros/devops-core-pipelines).

## Pipelines activos

Al hacer push en cualquier rama, se ejecutan automáticamente:

| Job | Pipeline central invocado | Qué hace |
|---|---|---|
| `validar-scripts` | `script-validation-base.yml` | PSScriptAnalyzer + Gitleaks sobre `./scripts` |
| `helper-terraform` | `tf-development-helper.yml` | fmt + TFLint + terraform-docs sobre `./terraform` |

## Documentación del módulo Terraform

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
