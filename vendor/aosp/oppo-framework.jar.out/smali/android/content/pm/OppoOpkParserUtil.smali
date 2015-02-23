.class public Landroid/content/pm/OppoOpkParserUtil;
.super Ljava/lang/Object;
.source "OppoOpkParserUtil.java"


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final INVLAID_IMEI:Ljava/lang/String; = "invalid imei"

.field private static final OPK_FILE_MARK:Ljava/lang/String; = "META-INF/key"

.field private static final PERSIST_KEY:Ljava/lang/String; = "persist.sys.oppo.device.imei"

.field private static final TAG:Ljava/lang/String; = "OppoOpkParserUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileForOpk(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Z
    .locals 5
    .parameter "jarFile"
    .parameter "je"

    .prologue
    .line 92
    const-string v3, "META-INF/key"

    invoke-virtual {p0, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 93
    .local v1, opkKeyFileZipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, isOpkFile:Z
    :goto_0
    const/4 v2, 0x0

    .line 96
    .local v2, result:Z
    if-eqz v0, :cond_0

    .line 97
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const/4 v2, 0x1

    .line 104
    :cond_0
    :goto_1
    return v2

    .line 93
    .end local v0           #isOpkFile:Z
    .end local v2           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    .restart local v0       #isOpkFile:Z
    .restart local v2       #result:Z
    :cond_2
    const-string v3, "resources.arsc"

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static checkImeiForOpk(Ljava/util/jar/JarFile;)V
    .locals 9
    .parameter "jarFile"

    .prologue
    .line 53
    const-string v6, "META-INF/key"

    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 54
    .local v5, opkKeyFileZipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 56
    .local v3, isOpkFile:Z
    :goto_0
    const-string v6, "OppoOpkParserUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install opk file? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v3, :cond_0

    .line 59
    const-string v6, "persist.sys.oppo.device.imei"

    const-string v7, "invalid imei"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, id:Ljava/lang/String;
    const-string v6, "invalid imei"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    :try_start_0
    const-string v6, "iphonesubinfo"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    .line 65
    .local v4, mIphone:Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v4, :cond_2

    .line 66
    const-string v6, "OppoOpkParserUtil"

    const-string v7, "get iphonesubinfo is null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #mIphone:Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    :goto_1
    return-void

    .line 54
    .end local v3           #isOpkFile:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 70
    .restart local v1       #id:Ljava/lang/String;
    .restart local v3       #isOpkFile:Z
    .restart local v4       #mIphone:Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_2
    invoke-interface {v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, imei:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 73
    const-string v6, "OppoOpkParserUtil"

    const-string v7, "get imei is null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    .end local v2           #imei:Ljava/lang/String;
    .end local v4           #mIphone:Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "OppoOpkParserUtil"

    const-string v7, "install opk file, getDeviceId failed!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #imei:Ljava/lang/String;
    .restart local v4       #mIphone:Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_3
    :try_start_1
    const-string v6, "OppoOpkParserUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install opk file, set oppo imei:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v6, "persist.sys.oppo.device.imei"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static checkImeiForOpkByUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "packageURI"

    .prologue
    .line 111
    const-string v4, "OppoOpkParserUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installPackage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 114
    if-eqz v2, :cond_0

    const-string v4, ".opk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "OppoOpkParserUtil"

    const-string v5, "install opk!!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "persist.sys.oppo.device.imei"

    const-string v5, "invalid imei"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, id:Ljava/lang/String;
    const-string v4, "invalid imei"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 121
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_1

    .line 122
    const-string v4, "OppoOpkParserUtil"

    const-string v5, "telephonyManager is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0           #id:Ljava/lang/String;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #id:Ljava/lang/String;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, imei:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 129
    const-string v4, "OppoOpkParserUtil"

    const-string v5, "get imei is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    const-string v4, "OppoOpkParserUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "persist.sys.oppo.device.imei"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
