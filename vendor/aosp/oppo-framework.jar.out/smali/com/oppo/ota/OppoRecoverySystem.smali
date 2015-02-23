.class public Lcom/oppo/ota/OppoRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "OppoRecoverySystem.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "OppoRecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    return-void
.end method

.method public static installOppoOtaPackage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, packageFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 54
    const-string v12, "OppoRecoverySystem"

    const-string v13, "installOppoOtaPackage failed before reboot, packageFileList is null!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_0
    sget-object v12, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 59
    sget-object v12, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 60
    sget-object v12, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 61
    new-instance v3, Ljava/io/FileWriter;

    sget-object v12, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 63
    .local v3, command:Ljava/io/FileWriter;
    const-string v7, ""

    .line 64
    .local v7, internal:Ljava/lang/String;
    const-string v4, ""

    .line 66
    .local v4, external:Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 67
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 71
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->isExternalSDRemoved(Landroid/content/Context;)Z

    move-result v1

    .line 76
    .local v1, bExtSdRemove:Z
    const/4 v5, 0x0

    .line 77
    .local v5, filename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 78
    .local v0, arg:Ljava/lang/String;
    const-string v11, "--wipe_data"

    .line 79
    .local v11, strWipeData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, bWipeData:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 82
    .local v8, packageFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_4

    const-string v12, "/--wipe_data"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_0

    .line 89
    :cond_4
    const-string v12, "OppoRecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "filename="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    .line 92
    const/4 v10, 0x0

    .line 94
    .local v10, rocoveryFileName:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    .line 95
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    const-string v12, "OppoRecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "!!!external sdcard inserted, change "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_5
    :goto_1
    move-object v5, v10

    .line 108
    .end local v10           #rocoveryFileName:Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    const-string v12, "/mnt"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 109
    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    :cond_7
    const-string v12, "OppoRecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "!!! REBOOT TO INSTALL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " !!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v5, :cond_3

    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--update_package="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    const-string v12, "\n"

    invoke-virtual {v3, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 127
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #packageFile:Ljava/io/File;
    :catchall_0
    move-exception v12

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    throw v12

    .line 98
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #packageFile:Ljava/io/File;
    .restart local v10       #rocoveryFileName:Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    .line 99
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    const-string v12, "OppoRecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "!!!external sdcard inserted, change "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 121
    .end local v8           #packageFile:Ljava/io/File;
    .end local v10           #rocoveryFileName:Ljava/lang/String;
    :cond_9
    if-eqz v2, :cond_a

    .line 122
    const-string v12, "OppoRecoverySystem"

    const-string v13, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    const-string v12, "\n"

    invoke-virtual {v3, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :cond_a
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 131
    const-string v12, "power"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 132
    .local v9, pm:Landroid/os/PowerManager;
    const-string v12, "recovery"

    invoke-virtual {v9, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 134
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Reboot failed (no permissions?)"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
.end method
