# AWS Backup

Serviço gerenciado da AWS para centralizar a gestão e automatizar backups de diversos serviços AWS.
Não é necessário criar scripts customizados e processos manuais.

Serviços suportados:

* Amazon EC2/ Amazon EBS;
* Amazon S3;
* Amazon RDS / Aurora / Dynamo DB;
* Amazon Document DB/ Amazon Neptune;
* Amazon EFS / FSx (Lustre & Windows File Server)
* AWS Storage Gateway (Volume Gateway).

Suporta backups Cross-Region e Cross-Account. 

Também é possível gerar backups on-demand ou agendados.

Suporta Tag-Based Backup Policies.

Você cria backup policies, que são chamadas de **Backup Plans**, configurando:

* Frequência de Backup (a cada 12h, dirios, semanais, mensais, cron expression);
* Janela de Backup;
* Transição para Cold Storage (Never, Days, Weeks, Months, Years);
* Período de Retenção (Always, Days, Weeks, Months, Years).

![](../Imagens/aws-backup.png)

---

### AWS Backup Vault Lock

Força o WORM State (Write Once Read Many) para todos os backups armazenados no seu AWS Backup Vault.

> **WORM**: cacarcterística de uma solução de storage onde uma vez que os dados são escritos, não podem ser modificados (imutáveis) ou apagados.

Possui camada adicional de defesa para proteger os backups contra:

* Operações de delete (acidental ou malicionso);
* Atualizações que diminuam ou alterem os períodos de retenção.

Até mesmo o root user não consegue deletar os backups quando habilitado.