.class public Lcom/oppo/widget/OppoLockPatternUtils;
.super Ljava/lang/Object;
.source "OppoLockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field protected static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FACE_UNLOCK:Ljava/lang/String; = "face_unlock"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field protected static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field protected static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field protected static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.weak_fallback"

.field public static final LOCKSCREEN_WEAK_FALLBACK_FOR:Ljava/lang/String; = "lockscreen.weak_fallback_for"

.field protected static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field protected static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field protected static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final SETTINGS_COMMAND_KEY:Ljava/lang/String; = "settings_command_key"

.field public static final SETTINGS_COMMAND_VALUE:Ljava/lang/String; = "settings_command_value"

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternUtils"

.field public static final USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle; = null

.field public static final VOICE_UNLOCK:Ljava/lang/String; = "voice_unlock"

.field public static final VOICE_WEAK_FALLBACK_SET_KEY:Ljava/lang/String; = "lockscreen.voice_weak_fallback_set"

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    .line 129
    sget-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    const-string v1, "showuserswitcher"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    sget-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    const-string v1, "showsecuritychallenge"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const/16 v0, -0x2710

    sput v0, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 191
    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "list"
    .parameter "separator"

    .prologue
    .line 1150
    array-length v1, p0

    .line 1152
    .local v1, listLength:I
    packed-switch v1, :pswitch_data_0

    .line 1161
    const/4 v4, 0x0

    .line 1162
    .local v4, strLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1164
    .local v3, separatorLength:I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1165
    .local v5, stringList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1166
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1167
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1168
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 1169
    add-int/2addr v4, v3

    .line 1165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1154
    .end local v0           #i:I
    .end local v3           #separatorLength:I
    .end local v4           #strLength:I
    .end local v5           #stringList:[Ljava/lang/String;
    :pswitch_0
    const-string v6, ""

    .line 1182
    :goto_1
    return-object v6

    .line 1157
    :pswitch_1
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1173
    .restart local v0       #i:I
    .restart local v3       #separatorLength:I
    .restart local v4       #strLength:I
    .restart local v5       #stringList:[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1175
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 1176
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1177
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_2

    .line 1178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1182
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 586
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 587
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 588
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 587
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 595
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 596
    const/high16 v4, 0x5

    .line 604
    :goto_2
    return v4

    .line 598
    :cond_2
    if-eqz v1, :cond_3

    .line 599
    const/high16 v4, 0x4

    goto :goto_2

    .line 601
    :cond_3
    if-eqz v0, :cond_4

    .line 602
    const/high16 v4, 0x2

    goto :goto_2

    .line 604
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private finishBiometricWeak()V
    .locals 3

    .prologue
    .line 1390
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1392
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 1396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1397
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1399
    return-void
.end method

.method private finishVoiceWeak()V
    .locals 3

    .prologue
    .line 1424
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setVoiceUnlockFallbackSet(Z)V

    .line 1428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1429
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voiceunlock"

    const-string v2, "com.mediatek.voiceunlock.VoiceUnlockSetupEnd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1432
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1112
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1115
    .end local p2
    :goto_0
    return p2

    .line 1114
    .restart local p2
    :catch_0
    move-exception v0

    .line 1115
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 286
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 291
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1260
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1263
    .end local p2
    :goto_0
    return-wide p2

    .line 1262
    .restart local p2
    :catch_0
    move-exception v0

    .line 1263
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 884
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 885
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 887
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 888
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 889
    const-string v3, "OppoLockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 890
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "secureSettingKey"

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "secureSettingKey"
    .parameter "userHandle"

    .prologue
    const/4 v1, 0x0

    .line 1286
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1288
    :goto_0
    return-object v1

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1411
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1416
    :goto_0
    return v0

    .line 1413
    :catch_0
    move-exception v0

    .line 1416
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 865
    const/4 v1, 0x0

    .line 879
    :goto_0
    return-object v1

    .line 868
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 869
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 870
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 871
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 872
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 875
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 876
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 877
    .local v1, hash:[B
    goto :goto_0

    .line 878
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 879
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 842
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 843
    const-string v4, ""

    .line 852
    :goto_0
    return-object v4

    .line 845
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 847
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 848
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 849
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 850
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1121
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1124
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1269
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 1273
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :goto_0
    return-void

    .line 1274
    :catch_0
    move-exception v0

    .line 1276
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "secureSettingKey"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 1294
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1297
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 827
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 828
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 829
    aget-byte v0, v1, v2

    .line 830
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 832
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    .line 924
    const-string v0, "0123456789ABCDEF"

    .line 925
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 926
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_0
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 6
    .parameter "password"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 612
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 628
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 617
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 618
    const-string v4, "OppoLockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_1
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 624
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "OppoLockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeAppWidgets([I)V
    .locals 4
    .parameter "appWidgetIds"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1209
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .locals 6
    .parameter "widgetId"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1213
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1214
    .local v3, widgets:[I
    if-nez v3, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v4

    .line 1217
    :cond_1
    if-ltz p2, :cond_0

    array-length v5, v3

    if-gt p2, v5, :cond_0

    .line 1220
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 1221
    .local v2, newWidgets:[I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 1222
    if-ne p2, v0, :cond_2

    .line 1223
    aput p1, v2, v0

    .line 1224
    add-int/lit8 v0, v0, 0x1

    .line 1226
    :cond_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1227
    aget v4, v3, v1

    aput v4, v2, v0

    .line 1228
    add-int/lit8 v1, v1, 0x1

    .line 1221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1231
    :cond_4
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->writeAppWidgets([I)V

    .line 1232
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 5
    .parameter "password"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 325
    .local v2, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkPassword([BI)Z

    move-result v0

    .line 327
    .local v0, matched:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 328
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0           #matched:Z
    :cond_0
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, re:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 343
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 344
    .local v2, passwordHashString:Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v5

    .line 349
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 350
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 351
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_0

    .line 354
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 356
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 357
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 359
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 305
    .local v2, userId:I
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkPattern([BI)Z

    move-result v0

    .line 306
    .local v0, matched:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 307
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #matched:Z
    :cond_0
    :goto_0
    return v0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, re:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearLock(Z)V
    .locals 4
    .parameter "isFallback"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 466
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 468
    :cond_0
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setLockPatternEnabled(Z)V

    .line 470
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 471
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 472
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 473
    return-void
.end method

.method public clearVoiceUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setVoiceUnlockFallbackSet(Z)V

    .line 1448
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "voice_unlock_screen"

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1450
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "voice_unlock_and_launch1"

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1452
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "voice_unlock_and_launch2"

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1454
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "voice_unlock_and_launch3"

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1456
    return-void
.end method

.method deleteGallery()V
    .locals 3

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 3

    .prologue
    .line 499
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 500
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 5

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 415
    .local v0, activePasswordQuality:I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 417
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_0

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 419
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    const/high16 v0, 0x1

    goto :goto_0

    .line 424
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const v0, 0x8000

    goto :goto_0

    .line 430
    :sswitch_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    const/16 v0, 0x4000

    goto :goto_0

    .line 435
    :sswitch_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const/high16 v0, 0x2

    goto :goto_0

    .line 440
    :sswitch_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const/high16 v0, 0x4

    goto :goto_0

    .line 445
    :sswitch_5
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/high16 v0, 0x5

    goto :goto_0

    .line 450
    :sswitch_6
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const/high16 v0, 0x6

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .locals 10

    .prologue
    .line 1129
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, appWidgetIdString:Ljava/lang/String;
    const-string v4, ","

    .line 1132
    .local v4, delims:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1133
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, appWidgetStringIds:[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1135
    .local v2, appWidgetIds:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 1136
    aget-object v0, v3, v6

    .line 1138
    .local v0, appWidget:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v5

    .line 1140
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v7, "OppoLockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v2, 0x0

    .line 1146
    .end local v0           #appWidget:Ljava/lang/String;
    .end local v2           #appWidgetIds:[I
    .end local v3           #appWidgetStringIds:[Ljava/lang/String;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v6           #i:I
    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_1
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 265
    sget v1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 267
    sget v1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    .line 272
    :goto_0
    return v1

    .line 270
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 177
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "OppoLockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFallbackAppWidgetId()I
    .locals 4

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 5

    .prologue
    const-wide/32 v3, 0x10000

    .line 785
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 790
    .local v0, quality:I
    const v1, 0x8000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_1

    .line 792
    :cond_0
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 795
    :cond_1
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1057
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1058
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1059
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 1062
    .end local v0           #deadline:J
    :cond_1
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    const/4 v0, 0x0

    .line 1107
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1406
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getVoiceUnlockFallbackSet()Z
    .locals 2

    .prologue
    .line 1464
    const-string v0, "lockscreen.voice_weak_fallback_set"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 405
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    iget-object v4, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 973
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v2

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 982
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 986
    goto :goto_0
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1007
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1008
    .local v0, currentFlag:J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .locals 15

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 937
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 938
    .local v3, mode:J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 939
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_0

    cmp-long v8, v3, v11

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_4

    :cond_0
    move v5, v7

    .line 943
    .local v5, passwordEnabled:Z
    :goto_0
    cmp-long v8, v1, v13

    if-eqz v8, :cond_1

    cmp-long v8, v1, v11

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_5

    :cond_1
    move v0, v7

    .line 949
    .local v0, backupEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingVoiceWeak()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    if-eqz v0, :cond_6

    :cond_3
    :goto_2
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_4
    move v5, v6

    .line 939
    goto :goto_0

    .restart local v5       #passwordEnabled:Z
    :cond_5
    move v0, v6

    .line 943
    goto :goto_1

    .restart local v0       #backupEnabled:Z
    :cond_6
    move v7, v6

    .line 949
    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 957
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    .line 961
    .local v0, backupEnabled:Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingVoiceWeak()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    .end local v0           #backupEnabled:Z
    :cond_2
    move v0, v2

    .line 957
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_3
    move v1, v2

    .line 961
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 395
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 1070
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1303
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1304
    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v4

    .line 1308
    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1310
    .local v4, secure:Z
    :cond_2
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3
    move v1, v5

    .line 1303
    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_4
    move v0, v5

    .line 1304
    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_5
    move v4, v5

    .line 1308
    goto :goto_2
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1036
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 1022
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    const/4 v2, 0x0

    .line 920
    :goto_0
    return-object v2

    .line 910
    :cond_0
    const/4 v0, 0x0

    .line 911
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 913
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 914
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 915
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 916
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/oppo/widget/OppoLockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/oppo/widget/OppoLockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 917
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_0
    move-exception v1

    .line 918
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "OppoLockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppWidget(I)Z
    .locals 6
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1238
    .local v3, widgets:[I
    array-length v5, v3

    if-nez v5, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v4

    .line 1242
    :cond_1
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1243
    .local v2, newWidgets:[I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1244
    aget v5, v3, v0

    if-ne v5, p1, :cond_2

    .line 1243
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1246
    :cond_2
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 1250
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1254
    :cond_3
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->writeAppWidgets([I)V

    .line 1255
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 254
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 258
    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    .line 1378
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1380
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    const/4 v1, 0x1

    .line 1386
    :goto_0
    return v1

    .line 1383
    :catch_0
    move-exception v1

    .line 1386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 6
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 638
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 639
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"
    .parameter "isFallbackFor"

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 654
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 30
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"
    .parameter "isFallbackFor"
    .parameter "userHandle"

    .prologue
    .line 670
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v24

    .line 672
    .local v24, hash:[B
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-interface {v4, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 674
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v26

    .line 675
    .local v26, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_b

    .line 676
    if-nez p5, :cond_0

    .line 678
    invoke-direct/range {p0 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 684
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v23

    .line 685
    .local v23, computedQuality:I
    if-nez p3, :cond_8

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 689
    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 690
    if-eqz v23, :cond_7

    .line 691
    const/4 v6, 0x0

    .line 692
    .local v6, letters:I
    const/4 v7, 0x0

    .line 693
    .local v7, uppercase:I
    const/4 v8, 0x0

    .line 694
    .local v8, lowercase:I
    const/4 v9, 0x0

    .line 695
    .local v9, numbers:I
    const/4 v10, 0x0

    .line 696
    .local v10, symbols:I
    const/4 v11, 0x0

    .line 697
    .local v11, nonletter:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_4

    .line 698
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    .line 699
    .local v22, c:C
    const/16 v4, 0x41

    move/from16 v0, v22

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    move/from16 v0, v22

    if-gt v0, v4, :cond_1

    .line 700
    add-int/lit8 v6, v6, 0x1

    .line 701
    add-int/lit8 v7, v7, 0x1

    .line 697
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 702
    :cond_1
    const/16 v4, 0x61

    move/from16 v0, v22

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    move/from16 v0, v22

    if-gt v0, v4, :cond_2

    .line 703
    add-int/lit8 v6, v6, 0x1

    .line 704
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 705
    :cond_2
    const/16 v4, 0x30

    move/from16 v0, v22

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    move/from16 v0, v22

    if-gt v0, v4, :cond_3

    .line 706
    add-int/lit8 v9, v9, 0x1

    .line 707
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 709
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 710
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 713
    .end local v22           #c:C
    :cond_4
    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 746
    .end local v6           #letters:I
    .end local v7           #uppercase:I
    .end local v8           #lowercase:I
    .end local v9           #numbers:I
    .end local v10           #symbols:I
    .end local v11           #nonletter:I
    .end local v25           #i:I
    :cond_5
    :goto_2
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 747
    .local v27, passwordHistory:Ljava/lang/String;
    if-nez v27, :cond_6

    .line 748
    new-instance v27, Ljava/lang/String;

    .end local v27           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v27 .. v27}, Ljava/lang/String;-><init>()V

    .line 750
    .restart local v27       #passwordHistory:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v28

    .line 751
    .local v28, passwordHistoryLength:I
    if-nez v28, :cond_a

    .line 752
    const-string v27, ""

    .line 762
    :goto_3
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p5

    invoke-direct {v0, v4, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 776
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #computedQuality:I
    .end local v26           #keyStore:Landroid/security/KeyStore;
    .end local v27           #passwordHistory:Ljava/lang/String;
    .end local v28           #passwordHistoryLength:I
    :goto_4
    return-void

    .line 718
    .restart local v3       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #computedQuality:I
    .restart local v26       #keyStore:Landroid/security/KeyStore;
    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 772
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #computedQuality:I
    .end local v26           #keyStore:Landroid/security/KeyStore;
    :catch_0
    move-exception v29

    .line 774
    .local v29, re:Landroid/os/RemoteException;
    const-string v4, "OppoLockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to save lock password "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 723
    .end local v29           #re:Landroid/os/RemoteException;
    .restart local v3       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #computedQuality:I
    .restart local v26       #keyStore:Landroid/security/KeyStore;
    :cond_8
    :try_start_1
    const-string v4, "face_unlock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 725
    const-string v4, "lockscreen.password_type"

    const-wide/32 v12, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 727
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishBiometricWeak()V

    .line 730
    const v13, 0x8000

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_2

    .line 733
    :cond_9
    const-string v4, "voice_unlock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 734
    const-string v4, "lockscreen.password_type"

    const-wide/16 v12, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 736
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishVoiceWeak()V

    .line 739
    const/16 v13, 0x4000

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_2

    .line 754
    .restart local v27       #passwordHistory:Ljava/lang/String;
    .restart local v28       #passwordHistoryLength:I
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 757
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    mul-int v5, v5, v28

    add-int v5, v5, v28

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_3

    .line 766
    .end local v23           #computedQuality:I
    .end local v27           #passwordHistory:Ljava/lang/String;
    .end local v28           #passwordHistoryLength:I
    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 767
    invoke-virtual/range {v26 .. v26}, Landroid/security/KeyStore;->reset()Z

    .line 769
    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPattern(Ljava/util/List;ZLjava/lang/String;)V

    .line 522
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZLjava/lang/String;)V
    .locals 14
    .parameter
    .parameter "isFallback"
    .parameter "isFallbackFor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v11

    .line 536
    .local v11, hash:[B
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v11, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern([BI)V

    .line 537
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 538
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v12

    .line 539
    .local v12, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_3

    .line 540
    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 541
    const-string v2, "lockscreen.patterneverchosen"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 542
    if-nez p2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 545
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 546
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 547
    const/high16 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 578
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    :cond_1
    const-string v2, "face_unlock"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x8000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 553
    const-string v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 555
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishBiometricWeak()V

    .line 556
    const v2, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    :catch_0
    move-exception v13

    .line 576
    .local v13, re:Landroid/os/RemoteException;
    const-string v2, "OppoLockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v13           #re:Landroid/os/RemoteException;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    :cond_2
    :try_start_1
    const-string v2, "voice_unlock"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x4000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 561
    const-string v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 563
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishVoiceWeak()V

    .line 564
    const/16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_0

    .line 569
    :cond_3
    invoke-virtual {v12}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 570
    invoke-virtual {v12}, Landroid/security/KeyStore;->reset()Z

    .line 572
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 3

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 384
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists()Z
    .locals 3

    .prologue
    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 993
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 995
    .local v0, currentFlag:J
    if-eqz p1, :cond_0

    .line 996
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1000
    .local v2, newFlag:J
    :goto_0
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1001
    return-void

    .line 998
    .end local v2           #newFlag:J
    :cond_0
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2       #newFlag:J
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 261
    sput p1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    .line 262
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1015
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1016
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 482
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 483
    return-void

    .line 482
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1047
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1048
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1049
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1081
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1082
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1402
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1403
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1029
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1030
    return-void
.end method

.method public setVoiceUnlockFallbackSet(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 1440
    const-string v0, "lockscreen.voice_weak_fallback_set"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1441
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .locals 6
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    .line 1368
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 1369
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V
    .locals 7
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"
    .parameter "upperCase"
    .parameter "showIcon"

    .prologue
    const/4 v5, 0x0

    .line 1331
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    .line 1332
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    .line 1341
    const v3, 0xc040451

    .line 1342
    .local v3, textId:I
    if-eqz p5, :cond_1

    const v2, 0x1080084

    .line 1343
    .local v2, phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1349
    .end local v2           #phoneCallIcon:I
    :goto_1
    if-eqz p4, :cond_5

    .line 1350
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1351
    .local v1, original:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1352
    .local v4, upper:Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    .end local v1           #original:Ljava/lang/CharSequence;
    .end local v3           #textId:I
    .end local v4           #upper:Ljava/lang/String;
    :goto_3
    return-void

    .line 1334
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .restart local v3       #textId:I
    :cond_1
    move v2, v5

    .line 1342
    goto :goto_0

    .line 1345
    .end local v3           #textId:I
    :cond_2
    const v3, 0xc040452

    .line 1346
    .restart local v3       #textId:I
    if-eqz p5, :cond_3

    const v0, 0xc080471

    .line 1347
    .local v0, emergencyIcon:I
    :goto_4
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .end local v0           #emergencyIcon:I
    :cond_3
    move v0, v5

    .line 1346
    goto :goto_4

    .line 1351
    .restart local v1       #original:Ljava/lang/CharSequence;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1354
    .end local v1           #original:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method public usingBiometricWeak()Z
    .locals 4

    .prologue
    .line 802
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 804
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingVoiceWeak()Z
    .locals 4

    .prologue
    .line 813
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 815
    .local v0, quality:I
    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeFallbackAppWidgetId(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1193
    return-void
.end method
