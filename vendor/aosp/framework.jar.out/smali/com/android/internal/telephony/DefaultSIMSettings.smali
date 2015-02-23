.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final SIM_CHANGED:I = -0x1

.field private static final SIM_NEW:I = -0x2

.field private static final SIM_NOT_CHANGE:I = 0x0

.field private static final SIM_NOT_INSERT:I = -0x63

.field private static final SIM_REPOSITION:I = -0x3

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 631
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 632
    return-void
.end method

.method public static broadCastNewSIMDetected(II)V
    .locals 3
    .parameter "nSIMCount"
    .parameter "nNewSIMSlot"

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 623
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method public static broadCastSIMInsertedStatus(I)V
    .locals 3
    .parameter "nSIMInsertStatus"

    .prologue
    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 647
    return-void
.end method

.method public static broadCastSIMSwapped(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 639
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 640
    return-void
.end method

.method private static isNewInsertedSim(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 4
    .parameter "iccId"
    .parameter "oldIccId"
    .parameter "simNum"

    .prologue
    .line 588
    const/4 v1, 0x1

    .line 589
    .local v1, isNewSim:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 590
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    const/4 v1, 0x0

    .line 595
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNewInsertedSim]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 596
    return v1

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isSIMRemoved(JJJ)Z
    .locals 3
    .parameter "defSIMId"
    .parameter "curSIM1"
    .parameter "curSIM2"

    .prologue
    const/4 v0, 0x0

    .line 600
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    cmp-long v1, p0, p2

    if-eqz v1, :cond_0

    cmp-long v1, p0, p4

    if-eqz v1, :cond_0

    .line 603
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 650
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 51
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "is3GSwitched"

    .prologue
    .line 97
    const-class v50, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v50

    :try_start_0
    const-string/jumbo v5, "onAllIccidQueryComplete start"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 98
    if-nez p2, :cond_0

    const-string p2, ""

    .line 99
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 100
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    aput-object p2, v23, v5

    const/4 v5, 0x1

    aput-object p3, v23, v5

    .line 101
    .local v23, iccId:[Ljava/lang/String;
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v5, [Z

    move-object/from16 v26, v0

    .line 102
    .local v26, isSimInserted:[Z
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_4

    .line 103
    aget-object v5, v23, v22

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_1
    aput-object v5, v23, v22

    .line 104
    const-string v5, ""

    aget-object v6, v23, v22

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    aput-boolean v5, v26, v22

    .line 102
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 103
    :cond_2
    aget-object v5, v23, v22

    goto :goto_1

    .line 104
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 106
    :cond_4
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v5, [I

    move-object/from16 v29, v0

    .line 107
    .local v29, mInsertSimState:[I
    const/16 v22, 0x0

    :goto_3
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_5

    .line 108
    const/4 v5, 0x0

    aput v5, v29, v22

    .line 107
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 111
    :cond_5
    const/16 v24, 0x0

    .line 112
    .local v24, index:I
    const/16 v22, 0x0

    :goto_4
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_9

    .line 113
    aget-boolean v5, v26, v22

    if-nez v5, :cond_7

    .line 114
    const/16 v5, -0x63

    aput v5, v29, v22

    .line 112
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 117
    :cond_7
    const/16 v24, 0x2

    .line 118
    add-int/lit8 v28, v22, 0x1

    .local v28, j:I
    :goto_5
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_6

    .line 119
    aget v5, v29, v28

    if-nez v5, :cond_8

    aget-object v5, v23, v22

    aget-object v6, v23, v28

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 121
    const/4 v5, 0x1

    aput v5, v29, v22

    .line 122
    aput v24, v29, v28

    .line 123
    add-int/lit8 v24, v24, 0x1

    .line 118
    :cond_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 127
    .end local v28           #j:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 128
    .local v13, contentResolver:Landroid/content/ContentResolver;
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 129
    .local v35, oldIccIdInSlot:[Ljava/lang/String;
    const/16 v22, 0x0

    :goto_6
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_e

    .line 130
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v36

    .line 131
    .local v36, oldSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v36, :cond_c

    .line 132
    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    aput-object v5, v35, v22

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete Old IccId in slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v35, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldSimId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 135
    aget v5, v29, v22

    if-nez v5, :cond_a

    aget-object v5, v23, v22

    aget-object v6, v35, v22

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 136
    const/4 v5, -0x1

    aput v5, v29, v22

    .line 138
    :cond_a
    aget v5, v29, v22

    if-eqz v5, :cond_b

    .line 139
    new-instance v49, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 140
    .local v49, value:Landroid/content/ContentValues;
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    sget-object v5, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    iget-wide v6, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v13, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete Reset slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to -1, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v23, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 129
    .end local v49           #value:Landroid/content/ContentValues;
    :cond_b
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 146
    :cond_c
    aget v5, v29, v22

    if-nez v5, :cond_d

    .line 148
    const/4 v5, -0x1

    aput v5, v29, v22

    .line 150
    :cond_d
    const-string v5, ""

    aput-object v5, v35, v22

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete No SIM in slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for last time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 97
    .end local v13           #contentResolver:Landroid/content/ContentResolver;
    .end local v22           #i:I
    .end local v23           #iccId:[Ljava/lang/String;
    .end local v24           #index:I
    .end local v26           #isSimInserted:[Z
    .end local v29           #mInsertSimState:[I
    .end local v35           #oldIccIdInSlot:[Ljava/lang/String;
    .end local v36           #oldSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local p1
    :catchall_0
    move-exception v5

    monitor-exit v50

    throw v5

    .line 156
    .restart local v13       #contentResolver:Landroid/content/ContentResolver;
    .restart local v22       #i:I
    .restart local v23       #iccId:[Ljava/lang/String;
    .restart local v24       #index:I
    .restart local v26       #isSimInserted:[Z
    .restart local v29       #mInsertSimState:[I
    .restart local v35       #oldIccIdInSlot:[Ljava/lang/String;
    .restart local p1
    :cond_e
    const/16 v30, 0x0

    .line 157
    .local v30, nNewCardCount:I
    const/16 v31, 0x0

    .line 158
    .local v31, nNewSimStatus:I
    const/16 v22, 0x0

    :goto_8
    :try_start_1
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_13

    .line 159
    aget v5, v29, v22

    const/16 v6, -0x63

    if-ne v5, v6, :cond_10

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete No SIM inserted in slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " this time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 158
    :cond_f
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 162
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v23, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldIccIdInSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v35, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 163
    aget v5, v29, v22

    if-lez v5, :cond_12

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v23, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v29, v22

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v5, v1}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete Special SIM with invalid IccId is inserted in slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 171
    :cond_11
    :goto_a
    aget-object v5, v23, v22

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-object/from16 v0, v35

    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/DefaultSIMSettings;->isNewInsertedSim(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 173
    add-int/lit8 v30, v30, 0x1

    .line 174
    packed-switch v22, :pswitch_data_0

    .line 189
    :goto_b
    const/4 v5, -0x2

    aput v5, v29, v22

    goto/16 :goto_9

    .line 168
    :cond_12
    aget v5, v29, v22

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    .line 169
    aget-object v5, v23, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v5, v1}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    .line 176
    :pswitch_0
    or-int/lit8 v31, v31, 0x1

    .line 177
    goto :goto_b

    .line 179
    :pswitch_1
    or-int/lit8 v31, v31, 0x2

    .line 180
    goto :goto_b

    .line 182
    :pswitch_2
    or-int/lit8 v31, v31, 0x4

    .line 183
    goto :goto_b

    .line 185
    :pswitch_3
    or-int/lit8 v31, v31, 0x8

    goto :goto_b

    .line 194
    :cond_13
    const/16 v22, 0x0

    :goto_c
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v0, v5, :cond_15

    .line 195
    aget v5, v29, v22

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    .line 196
    const/4 v5, -0x3

    aput v5, v29, v22

    .line 194
    :cond_14
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 200
    :cond_15
    const/4 v5, 0x4

    new-array v0, v5, [J

    move-object/from16 v43, v0

    fill-array-data v43, :array_0

    .line 201
    .local v43, simIdInSlot:[J
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v44

    .line 202
    .local v44, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v44, :cond_16

    const/16 v32, 0x0

    .line 203
    .local v32, nSimCount:I
    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete nSimCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 204
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    .line 205
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/provider/Telephony$SIMInfo;

    .line 206
    .local v48, temp:Landroid/provider/Telephony$SIMInfo;
    move-object/from16 v0, v48

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v48

    iget-wide v6, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    aput-wide v6, v43, v5

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete simIdInSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    iget-wide v6, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 202
    .end local v32           #nSimCount:I
    .end local v48           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_16
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v32

    goto :goto_d

    .line 210
    .restart local v32       #nSimCount:I
    :cond_17
    if-lez v30, :cond_18

    .line 211
    const-string/jumbo v5, "onAllIccidQueryComplete New SIM detected."

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 213
    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v13, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 214
    .local v11, airplaneMode:I
    if-lez v11, :cond_25

    .line 215
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v11           #airplaneMode:I
    :cond_18
    :goto_f
    const/16 v47, 0x0

    .line 222
    .local v47, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    const/16 v46, 0x0

    .line 224
    .local v46, smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    :try_start_2
    const-class v5, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v47, v0

    .line 225
    const-class v5, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    move-object/from16 v46, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    :goto_10
    :try_start_3
    const-string/jumbo v5, "video_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v39

    .line 233
    .local v39, oldVTDefaultSIM:J
    const-string/jumbo v5, "voice_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 235
    .local v3, oldVoiceCallDefaultSIM:J
    const-string/jumbo v5, "sms_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v37

    .line 236
    .local v37, oldSmsDefaultSIM:J
    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v33

    .line 256
    .local v33, oldGprsDefaultSIM:J
    const-string v5, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 257
    .local v12, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    move/from16 v0, v32

    if-le v0, v5, :cond_27

    .line 258
    const-wide/16 v5, -0x5

    cmp-long v5, v3, v5

    if-nez v5, :cond_19

    .line 259
    const-string/jumbo v5, "voice_call_sim_setting"

    const-wide/16 v6, -0x1

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 263
    :cond_19
    const-wide/16 v5, -0x5

    cmp-long v5, v37, v5

    if-nez v5, :cond_1a

    .line 264
    const-string/jumbo v5, "sms_sim_setting"

    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v6

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 268
    :cond_1a
    const-wide/16 v5, -0x5

    cmp-long v5, v33, v5

    if-nez v5, :cond_1b

    .line 278
    if-eqz p4, :cond_26

    .line 279
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 323
    :cond_1b
    :goto_11
    const-string v5, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    aget-object v5, v35, v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    aget-object v5, v35, v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_1d
    const/16 v21, 0x1

    .line 324
    .local v21, hasSIMRemoved:Z
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete. handling SIM detect dialog ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v35, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v35, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 327
    const-wide/16 v14, -0x5

    .line 328
    .local v14, defSIM:J
    const/4 v5, 0x1

    move/from16 v0, v32

    if-le v0, v5, :cond_2b

    .line 329
    const-wide/16 v14, -0x1

    .line 334
    :cond_1e
    :goto_13
    const/4 v5, 0x0

    aget-wide v5, v43, v5

    const/4 v7, 0x1

    aget-wide v7, v43, v7

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 335
    const-string/jumbo v5, "voice_call_sim_setting"

    invoke-static {v13, v5, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 338
    :cond_1f
    const/4 v5, 0x0

    aget-wide v7, v43, v5

    const/4 v5, 0x1

    aget-wide v9, v43, v5

    move-wide/from16 v5, v37

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 339
    const-wide/16 v16, -0x5

    .line 340
    .local v16, defaultSIM:J
    const/4 v5, 0x1

    move/from16 v0, v32

    if-le v0, v5, :cond_2c

    .line 341
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v16

    .line 345
    :cond_20
    :goto_14
    const-string/jumbo v5, "sms_sim_setting"

    move-wide/from16 v0, v16

    invoke-static {v13, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 352
    .end local v16           #defaultSIM:J
    :cond_21
    const/4 v5, 0x0

    aget-wide v7, v43, v5

    const/4 v5, 0x1

    aget-wide v9, v43, v5

    move-wide/from16 v5, v33

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 372
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 410
    :cond_22
    :goto_15
    if-nez v30, :cond_39

    .line 411
    if-nez v21, :cond_35

    const/4 v5, 0x0

    aget-object v5, v35, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    aget-object v5, v35, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 412
    const-string/jumbo v5, "onAllIccidQueryComplete. all SIM inserted into the same slot"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 427
    :cond_23
    :goto_16
    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v13, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 428
    .local v19, gprsDefaultSIM:J
    const-wide/16 v5, -0x5

    cmp-long v5, v19, v5

    if-eqz v5, :cond_24

    const-wide/16 v5, 0x0

    cmp-long v5, v19, v5

    if-eqz v5, :cond_24

    .line 429
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v45

    .line 430
    .local v45, slot:I
    const/4 v5, -0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_3a

    .line 432
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 433
    move/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 482
    .end local v45           #slot:I
    :cond_24
    :goto_17
    const-string v5, "gsm.siminfo.ready"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAllIccidQueryComplete PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.siminfo.ready"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 485
    new-instance v25, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v25, intent:Landroid/content/Intent;
    const-string v5, "broadCast intent ACTION_SIM_INFO_UPDATE"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 487
    const-string v5, "android.permission.READ_PHONE_STATE"

    const/4 v6, -0x1

    move-object/from16 v0, v25

    invoke-static {v0, v5, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    monitor-exit v50

    return-void

    .line 217
    .end local v3           #oldVoiceCallDefaultSIM:J
    .end local v12           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v14           #defSIM:J
    .end local v19           #gprsDefaultSIM:J
    .end local v21           #hasSIMRemoved:Z
    .end local v25           #intent:Landroid/content/Intent;
    .end local v33           #oldGprsDefaultSIM:J
    .end local v37           #oldSmsDefaultSIM:J
    .end local v39           #oldVTDefaultSIM:J
    .end local v46           #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .end local v47           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .restart local v11       #airplaneMode:I
    .restart local p1
    :cond_25
    :try_start_4
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_f

    .line 226
    .end local v11           #airplaneMode:I
    .restart local v46       #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .restart local v47       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catch_0
    move-exception v18

    .line 227
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 281
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v3       #oldVoiceCallDefaultSIM:J
    .restart local v12       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v33       #oldGprsDefaultSIM:J
    .restart local v37       #oldSmsDefaultSIM:J
    .restart local v39       #oldVTDefaultSIM:J
    :cond_26
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 286
    :cond_27
    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_1b

    .line 287
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v41, v0

    .line 288
    .local v41, simId:J
    const-string v5, "enable_internet_call_value"

    const/4 v6, 0x0

    invoke-static {v13, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 289
    .local v27, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v27, :cond_28

    const-wide/16 v5, -0x5

    cmp-long v5, v3, v5

    if-nez v5, :cond_29

    .line 292
    :cond_28
    const-string/jumbo v5, "voice_call_sim_setting"

    move-wide/from16 v0, v41

    invoke-static {v13, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 295
    :cond_29
    const-string/jumbo v5, "sms_sim_setting"

    move-wide/from16 v0, v41

    invoke-static {v13, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 301
    const-wide/16 v5, -0x5

    cmp-long v5, v33, v5

    if-nez v5, :cond_1b

    .line 311
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 323
    .end local v27           #isVoipEnabled:I
    .end local v41           #simId:J
    :cond_2a
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 330
    .restart local v14       #defSIM:J
    .restart local v21       #hasSIMRemoved:Z
    :cond_2b
    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_1e

    .line 331
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-wide v14, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_13

    .line 342
    .restart local v16       #defaultSIM:J
    :cond_2c
    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_20

    .line 343
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v16, v0

    goto/16 :goto_14

    .line 374
    .end local v16           #defaultSIM:J
    :cond_2d
    invoke-interface/range {v47 .. v47}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 375
    const-wide/16 v5, 0x0

    cmp-long v5, v33, v5

    if-lez v5, :cond_32

    .line 376
    if-gtz v30, :cond_2f

    const-string v5, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    const/4 v5, 0x1

    aget-object v5, v35, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    :cond_2e
    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const/4 v5, 0x0

    aget-object v5, v35, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 377
    :cond_2f
    const-string/jumbo v5, "onAllIccidQueryComplete. SIM swapped and data on, default switch to 3G SIM"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 378
    const/4 v5, 0x1

    move/from16 v0, v32

    if-le v0, v5, :cond_31

    .line 379
    if-eqz p4, :cond_30

    .line 380
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 382
    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 384
    :cond_31
    if-lez v32, :cond_22

    .line 385
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 389
    :cond_32
    if-lez v30, :cond_22

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_22

    .line 390
    const-string/jumbo v5, "onAllIccidQueryComplete. All SIM new, data off and default switch data to 3G SIM"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 391
    const/4 v5, 0x1

    move/from16 v0, v32

    if-le v0, v5, :cond_34

    .line 392
    if-eqz p4, :cond_33

    .line 393
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 395
    :cond_33
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 397
    :cond_34
    if-lez v32, :cond_22

    .line 398
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_15

    .line 414
    :cond_35
    const-string v5, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    const/4 v5, 0x1

    aget-object v5, v35, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    :cond_36
    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    const/4 v5, 0x0

    aget-object v5, v35, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 415
    :cond_37
    const-string/jumbo v5, "onAllIccidQueryComplete. SIM swapped"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 416
    const-string v5, "SWAP"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_16

    .line 417
    :cond_38
    if-lez v32, :cond_23

    .line 418
    const-string/jumbo v5, "onAllIccidQueryComplete No new SIM detected and Default SIM for some service has been removed[A]"

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 419
    const-string v5, "REMOVE"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_16

    .line 423
    :cond_39
    const-string v5, "getAllIccIdsDone. New SIM detected."

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 424
    const-string v5, "NEW"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_16

    .line 435
    .restart local v19       #gprsDefaultSIM:J
    .restart local v45       #slot:I
    :cond_3a
    const-string/jumbo v5, "onAllIccidQueryComplete: gprsDefaultSIM does not exist in slot then skip."

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_17

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 200
    :array_0
    .array-data 0x8
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "detectStatus"
    .parameter "nSIMCount"
    .parameter "nNewSIMStatus"

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method private static setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v4, 0x0

    .line 525
    .local v4, simToSet:I
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 526
    .local v2, simInfo1:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 527
    .local v0, sim1Color:I
    const/4 v1, -0x1

    .line 528
    .local v1, sim2Color:I
    if-eqz v2, :cond_2

    .line 529
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 530
    if-ltz v0, :cond_0

    const/4 v9, 0x3

    if-le v0, v9, :cond_1

    .line 531
    :cond_0
    or-int/lit8 v4, v4, 0x1

    .line 533
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim1Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 535
    :cond_2
    const/4 v9, 0x1

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 536
    .local v3, simInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_5

    .line 537
    iget v1, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 538
    if-ltz v1, :cond_3

    const/4 v9, 0x3

    if-le v1, v9, :cond_4

    .line 539
    :cond_3
    or-int/lit8 v4, v4, 0x2

    .line 541
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim2Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 543
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simToSet is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 544
    packed-switch v4, :pswitch_data_0

    .line 582
    const-string v9, "No need to set color"

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 546
    :pswitch_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 547
    .local v5, value1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 548
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 552
    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 553
    .local v6, value2:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 554
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v5           #value1:Landroid/content/ContentValues;
    .end local v6           #value2:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v7, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 561
    .local v7, valueColor:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 562
    if-ne v1, v0, :cond_6

    .line 563
    add-int/lit8 v9, v0, 0x1

    rem-int/lit8 v1, v9, 0x4

    .line 565
    :cond_6
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case2: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v7           #valueColor:Landroid/content/ContentValues;
    :pswitch_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 572
    .local v8, valueColor1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 573
    if-ne v0, v1, :cond_7

    .line 574
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v0, v9, 0x4

    .line 576
    :cond_7
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case1:setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 492
    .local v1, nSIMCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 494
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 495
    .local v2, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 497
    iget-wide v3, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 493
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 500
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_2

    const/4 v1, 0x0

    .line 504
    .local v1, nSIMCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 507
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 508
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v4, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "th mDisplayName is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 510
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    .line 511
    const-string v4, "gsm.sim.operator.default-name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 516
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 517
    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 506
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 512
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    .restart local v3       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const/4 v4, 0x1

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v5, :cond_0

    .line 513
    const-string v4, "gsm.sim.operator.default-name.2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 521
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    return-void
.end method
