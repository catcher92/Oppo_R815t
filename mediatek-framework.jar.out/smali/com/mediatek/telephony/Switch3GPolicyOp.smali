.class public Lcom/mediatek/telephony/Switch3GPolicyOp;
.super Lcom/mediatek/telephony/Switch3GPolicyDefault;
.source "Switch3GPolicyOp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Switch3GPolicyOp"

.field private static final PROPERTY_TELEPHONY_MODE:Ljava/lang/String; = "ril.telephony.mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyDefault;-><init>()V

    return-void
.end method

.method private getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    .line 420
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, operator:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/Switch3GPolicyOp;->isCuCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    const-string v0, "OP02"

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    invoke-static {p2}, Lcom/mediatek/telephony/Switch3GPolicyOp;->isCmCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v0, "OP01"

    goto :goto_0
.end method

.method private getTelephonyMode()I
    .locals 2

    .prologue
    .line 253
    const-string v0, "ril.telephony.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isCmCard(Ljava/lang/String;)Z
    .locals 5
    .parameter "iccid"

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 454
    .local v2, result:Z
    if-eqz p0, :cond_1

    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, opNum:I
    const/4 v3, 0x0

    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    const v3, 0xdb628

    if-eq v1, v3, :cond_0

    const v3, 0xf0eb0

    if-ne v1, v3, :cond_1

    .line 462
    :cond_0
    const/4 v2, 0x1

    .line 465
    .end local v1           #opNum:I
    :cond_1
    return v2

    .line 458
    .restart local v1       #opNum:I
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCuCard(Ljava/lang/String;)Z
    .locals 5
    .parameter "iccid"

    .prologue
    .line 434
    const/4 v2, 0x0

    .line 436
    .local v2, result:Z
    if-eqz p1, :cond_1

    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, opNum:I
    const/4 v3, 0x0

    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    :goto_0
    const v3, 0xdb629

    if-eq v1, v3, :cond_0

    const v3, 0xf0eba

    if-ne v1, v3, :cond_1

    .line 444
    :cond_0
    const/4 v2, 0x1

    .line 447
    .end local v1           #opNum:I
    :cond_1
    return v2

    .line 440
    .restart local v1       #opNum:I
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, nRet:I
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 333
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedSwitch3GSlots (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, sim1Op:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedSwitch3GSlots (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 353
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    .line 414
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 357
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x2

    goto :goto_0

    .line 361
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 362
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x3

    goto :goto_0

    .line 365
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 366
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 374
    :cond_5
    if-nez p2, :cond_6

    if-eqz p3, :cond_c

    .line 375
    :cond_6
    if-eqz p2, :cond_9

    .line 376
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 377
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :cond_7
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 381
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 389
    :cond_9
    if-eqz p3, :cond_0

    .line 390
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 391
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 394
    :cond_a
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 395
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 400
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 407
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 411
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_d
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 259
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 261
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeChange3GAllowed (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, sim1Op:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeChange3GAllowed (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 281
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .line 325
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 284
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 298
    :cond_5
    if-eqz p2, :cond_7

    .line 299
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_6
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_7
    if-eqz p3, :cond_0

    .line 310
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 311
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 313
    :cond_8
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 185
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeEnabled (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, sim1Op:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeEnabled (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 205
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x1

    .line 249
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 208
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 222
    :cond_5
    if-eqz p2, :cond_7

    .line 223
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 224
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :cond_6
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_7
    if-eqz p3, :cond_0

    .line 234
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 235
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    :cond_8
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "ctx"
    .parameter "iccId3GSim"
    .parameter "id3GSim"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 61
    const/4 v0, -0x1

    .line 62
    .local v0, selected:I
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 64
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select3GCapability (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3GSim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id3GSim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 76
    invoke-direct {p0, p1, p4}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, sim1Op:Ljava/lang/String;
    invoke-direct {p0, p1, p5}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select3GCapability (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 85
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-ne p3, v7, :cond_2

    .line 90
    const/16 v0, 0x15

    .line 170
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne v0, v7, :cond_1

    .line 172
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    :cond_1
    return v0

    .line 91
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    const/16 v0, 0x15

    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_4
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-ne p3, v7, :cond_5

    .line 102
    const/16 v0, 0x15

    goto :goto_0

    .line 103
    :cond_5
    if-ne p3, v8, :cond_6

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    const/16 v0, 0x15

    goto :goto_0

    .line 106
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_7
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v0, 0x15

    goto :goto_0

    .line 118
    :cond_8
    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    .line 120
    :cond_9
    if-eqz p4, :cond_d

    .line 121
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 123
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-ne p3, v7, :cond_a

    .line 126
    const/16 v0, 0x15

    goto :goto_0

    .line 127
    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 128
    const/16 v0, 0x15

    goto :goto_0

    .line 130
    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_c
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 142
    :cond_d
    if-eqz p5, :cond_0

    .line 144
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 145
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-ne p3, v7, :cond_e

    .line 148
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 149
    :cond_e
    if-ne p3, v8, :cond_f

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 150
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 152
    :cond_f
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 155
    :cond_10
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v0, 0x15

    goto/16 :goto_0
.end method
