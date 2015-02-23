.class public Landroid/telephony/OppoTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "OppoTelephonyManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of TelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field public static final OPPO_EMT_CALL_STATE_ACTIVE:I = 0x2

.field public static final OPPO_EMT_CALL_STATE_ALERTING:I = 0x5

.field public static final OPPO_EMT_CALL_STATE_DIALING:I = 0x1

.field public static final OPPO_EMT_CALL_STATE_ERROR:I = -0x1

.field public static final OPPO_EMT_CALL_STATE_HOLDING:I = 0x3

.field public static final OPPO_EMT_CALL_STATE_IDLE:I = 0x0

.field public static final OPPO_EMT_CALL_STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "OppoTelephonyManager"

.field private static isMtkGeminiSupport:Z

.field private static isMtkSupport:Z

.field private static isOppoSupport:Z

.field private static isRomSupport:Z

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/OppoTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/telephony/OppoTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/OppoTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 45
    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    .line 51
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.device"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isOppoSupport:Z

    .line 52
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.rom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isRomSupport:Z

    .line 53
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    .line 54
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    .line 55
    const-string v1, "OppoTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoTelephonyManager isMtkSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMtkGeminiSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 47
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/OppoTelephonyManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1
    .parameter "simId"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 313
    const-string/jumbo v0, "simphonebook2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 513
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoChangeIccLockPassword: remote exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 517
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoChangeIccLockPassword: null pointer exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoCheckPhbNameLength(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x3

    .line 166
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/telephony/OppoTelephonyManager;->oppoCheckPhbNameLengthGenimi(Ljava/lang/String;I)I

    move-result v1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNameLength()I

    move-result v1

    .line 170
    .local v1, leng:I
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 171
    .local v0, encodeInfo:[I
    aget v2, v0, v3

    if-ne v2, v3, :cond_0

    .line 172
    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method public oppoCheckPhbNameLengthGenimi(Ljava/lang/String;I)I
    .locals 4
    .parameter "name"
    .parameter "simId"

    .prologue
    const/4 v3, 0x3

    .line 345
    invoke-virtual {p0, p2}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNameLengthGemini(I)I

    move-result v1

    .line 356
    .local v1, leng:I
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 357
    .local v0, encodeInfo:[I
    aget v2, v0, v3

    if-ne v2, v3, :cond_0

    .line 358
    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v2, 0x2

    .line 361
    :cond_0
    return v1
.end method

.method public oppoDisableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoDisableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoDisableDataConnectivityGemini(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 418
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 420
    :goto_0
    return v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoEnableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 215
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoEnableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoEnableDataConnectivityGemini(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 409
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetAudioRecordState()Z
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public oppoGetIccCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoGetIccLockEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->oppoGetIccLockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccLockEnabled: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 496
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccLockEnabled: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetPreferredNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 97
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 99
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 107
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 106
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetScAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 283
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 287
    :goto_0
    return-object v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e1:Landroid/os/RemoteException;
    goto :goto_0

    .line 286
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 287
    .local v1, e2:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoGetServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v2

    .line 252
    :cond_0
    :goto_0
    return-object v2

    .line 243
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 244
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 249
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 250
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 251
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetServiceStateGemini(I)Landroid/os/Bundle;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 426
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 427
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 437
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 436
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 437
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimIndicatorState()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 258
    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimIndicatorStateGemini(I)I

    move-result v2

    .line 271
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 263
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 268
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 269
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 270
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimIndicatorStateGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 443
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 444
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 452
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 451
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 452
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 2

    .prologue
    .line 127
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookAllSpaceGemini(I)I

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 131
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookAllSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetSimPhonebookAllSpaceGemini(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookAllSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetSimPhonebookEmailLength()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 198
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookEmailLengthGemini(I)I

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 202
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookEmailLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookEmailLength: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookEmailLength: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetSimPhonebookEmailLengthGemini(I)I
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookEmailLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 403
    :goto_0
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookEmailLengthGemini: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 402
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookEmailLengthGemini: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 151
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNameLengthGemini(I)I

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 155
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookNameLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 158
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimPhonebookNameLengthGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 369
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookNameLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 372
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 374
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimPhonebookNumberLength()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 180
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNumberLengthGemini(I)I

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 184
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookNumberLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "OppoTelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookNumberLength: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "OppoTelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookNumberLength: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetSimPhonebookNumberLengthGemini(I)I
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 382
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookNumberLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 389
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookNumberLengthGemini: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetSimPhonebookNumberLengthGemini: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 2

    .prologue
    .line 139
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookUsedSpaceGemini(I)I

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 143
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookUsedSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetSimPhonebookUsedSpaceGemini(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookUsedSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 340
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoIs3GSwitchVisible()Z
    .locals 2

    .prologue
    .line 614
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 616
    :goto_0
    return v1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public oppoIsDialing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 523
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->oppoIsDialing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 529
    :goto_0
    return v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoIsDialing: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoIsDialing: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 503
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoSetIccLockEnabled: remote exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoSetIccLockEnabled: null pointer exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetLine1Number(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 458
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/telephony/OppoTelephonyManager;->oppoSetLine1NumberGemini(Ljava/lang/String;I)Z

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 462
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setLine1Number(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1Number: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 468
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1Number: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetLine1NumberGemini(Ljava/lang/String;I)Z
    .locals 4
    .parameter "phoneNumber"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 477
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 485
    :goto_0
    return v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1NumberGemini: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 483
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1NumberGemini: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetPreferredNetworkType(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    const/4 v2, -0x1

    .line 113
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 114
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 122
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 121
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoSetScAddress(Ljava/lang/String;I)Z
    .locals 4
    .parameter "address"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 299
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    const/4 v2, 0x1

    .line 304
    :goto_0
    return v2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e1:Landroid/os/RemoteException;
    goto :goto_0

    .line 303
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 304
    .local v1, e2:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoSimPhonebookIsReady()I
    .locals 2

    .prologue
    .line 84
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoSimPhonebookIsReadyGemini(I)I

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 88
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->oppoSimPhonebookIsReady()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoSimPhonebookIsReadyGemini(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 322
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->oppoSimPhonebookIsReadyGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoSwitch3GDefaultSim(I)Z
    .locals 2
    .parameter "simid"

    .prologue
    .line 622
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->switch3GDefaultSim(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 624
    :goto_0
    return v1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public oppoemtDial(Ljava/lang/String;)V
    .locals 1
    .parameter "telNumber"

    .prologue
    .line 543
    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/OppoTelephonyManager;->oppoemtDialGemini(Ljava/lang/String;I)V

    .line 553
    :goto_0
    return-void

    .line 547
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->emtDial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoemtDialGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter "telNumber"
    .parameter "slotid"

    .prologue
    .line 556
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->emtDialGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoemtHungup(Ljava/lang/String;)V
    .locals 1
    .parameter "telNumber"

    .prologue
    .line 565
    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/OppoTelephonyManager;->oppoemtHungupGemini(Ljava/lang/String;I)V

    .line 575
    :goto_0
    return-void

    .line 569
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->emtHungup(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoemtHungupGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter "telNumber"
    .parameter "slotid"

    .prologue
    .line 579
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->emtHungupGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoenableEngineerTest(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 588
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableEngineerTest(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoisSimInsert(I)Z
    .locals 2
    .parameter "simId"

    .prologue
    .line 597
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 599
    :goto_0
    return v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
