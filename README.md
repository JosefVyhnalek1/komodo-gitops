pro aktivování githooků je potřeba pustit git config core.hooksPath .githooks

mělo by to fungovat na windows, na macu i na linuxu

testováno na windows a na macu

na macu bylo ještě potřeba chmod +x .githooks/pre-commit - možná jsem tu změnu už commitnul a nebude to potřeba - d53a697da1a69a54b79e2e3e2146d881d80df687


když změním libovolný .enc.env soubor novým envem, tak by se před commitem běh zašifrovat pomocí SOPS