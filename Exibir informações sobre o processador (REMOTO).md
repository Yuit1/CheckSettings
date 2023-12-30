 $começo = read-host "Você ira executar os comandos em qual HostName?"

                try {
                    $result = Invoke-Command -ComputerName $comeco -ScriptBlock {

                        # Obtém informações sobre o processador do sistema
                        $processador = Get-CimInstance -ClassName Win32_Processor

                        if ($processador) {# Exibe informações sobre o processador
                        Write-Host "Nome do Processador: $($processador.Name)"
                        Write-Host "Arquitetura: $($processador.Architecture)"
                        Write-Host "Número de Núcleos: $($processador.NumberOfCores)"
                        Write-Host "Número de Threads: $($processador.NumberOfLogicalProcessors)"
                        Write-Host "Velocidade do Clock: $($processador.MaxClockSpeed) MHz"
                    } else {
                        Write-Host "Nenhuma porta aberta encontrada no Host $env:COMPUTERNAME."}
                   }
                    Write-Host $result

                } catch {
                    Write-Host "Erro ao conectar-se ao host $comeco. Verifique o nome do host e a conectividade."
                } finally {
                    pause
                    cls
                #break
            }
            }
