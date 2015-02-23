.class public Landroid/encryption/OppoEncryption;
.super Ljava/lang/Object;
.source "OppoEncryption.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mOppoEncryption:Landroid/encryption/OppoEncryption;


# instance fields
.field private mObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "OppoEncryption"

    sput-object v0, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/encryption/OppoEncryption;->mOppoEncryption:Landroid/encryption/OppoEncryption;

    .line 169
    sget-object v0, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    const-string v1, "OppoEncryption init!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "oppo_encryption"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native NativeDecryptFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native NativeDecryptStringInOppoEncryption([B)[B
.end method

.method private final native NativeDecryptThemeFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native NativeEncryptFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native NativeEncryptStringInOppoEncryption([B)[B
.end method

.method private final native NativeOpenXmlAssetInOppoEncryption(ILjava/lang/String;)I
.end method

.method private final native NativeOppoEncryptionTestValue()I
.end method

.method public static getInstance()Landroid/encryption/OppoEncryption;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/encryption/OppoEncryption;->mOppoEncryption:Landroid/encryption/OppoEncryption;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/encryption/OppoEncryption;

    invoke-direct {v0}, Landroid/encryption/OppoEncryption;-><init>()V

    sput-object v0, Landroid/encryption/OppoEncryption;->mOppoEncryption:Landroid/encryption/OppoEncryption;

    .line 42
    :cond_0
    sget-object v0, Landroid/encryption/OppoEncryption;->mOppoEncryption:Landroid/encryption/OppoEncryption;

    return-object v0
.end method


# virtual methods
.method public final decryptFileInOppoEncryption(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .parameter "encryptFile"
    .parameter "plainFile"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    sget-object v0, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decryptFileInOppoEncryption failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/encryption/OppoEncryption;->NativeDecryptFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final decryptStringInOppoEncryption([B)[B
    .locals 1
    .parameter "encryptStr"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/encryption/OppoEncryption;->NativeDecryptStringInOppoEncryption([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final decryptThemeFileInOppoEncryption(Ljava/io/File;Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .parameter "key"
    .parameter "encryptTheme"
    .parameter "decryptTheme"

    .prologue
    const/4 v0, -0x1

    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    sget-object v1, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptThemeFileInOppoEncryption failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v0

    .line 132
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    :cond_2
    sget-object v1, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptThemeFileInOppoEncryption failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    sget-object v1, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    const-string v2, "decryptThemeFileInOppoEncryption failed:key and theme are not in the same folder!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/encryption/OppoEncryption;->NativeDecryptThemeFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final encryptFileInOppoEncryption(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .parameter "plainFile"
    .parameter "encryptFile"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptFileInOppoEncryption failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/encryption/OppoEncryption;->NativeEncryptFileInOppoEncryption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final encryptStringInOppoEncryption([B)[B
    .locals 1
    .parameter "plainStr"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/encryption/OppoEncryption;->NativeEncryptStringInOppoEncryption([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final initAssetManager(I)V
    .locals 0
    .parameter "assetManager"

    .prologue
    .line 57
    iput p1, p0, Landroid/encryption/OppoEncryption;->mObject:I

    .line 58
    return-void
.end method

.method public final openXmlAssetInOppoEncryption(ILjava/lang/String;)I
    .locals 1
    .parameter "cookie"
    .parameter "fileName"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/encryption/OppoEncryption;->NativeOpenXmlAssetInOppoEncryption(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final oppoEncryptionTestValue()I
    .locals 2

    .prologue
    .line 49
    sget-object v0, Landroid/encryption/OppoEncryption;->TAG:Ljava/lang/String;

    const-string v1, "OppoEncryption oppoEncryptionTestValue enter!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Landroid/encryption/OppoEncryption;->NativeOppoEncryptionTestValue()I

    move-result v0

    return v0
.end method
