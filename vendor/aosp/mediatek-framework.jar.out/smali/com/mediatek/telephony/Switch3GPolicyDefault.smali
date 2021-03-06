.class public Lcom/mediatek/telephony/Switch3GPolicyDefault;
.super Ljava/lang/Object;
.source "Switch3GPolicyDefault.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISwitch3GPolicy;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Switch3GPolicyDefault"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, nRet:I
    if-eqz p2, :cond_0

    .line 112
    or-int/lit8 v0, v0, 0x1

    .line 113
    :cond_0
    if-eqz p3, :cond_1

    .line 114
    or-int/lit8 v0, v0, 0x2

    .line 115
    :cond_1
    const-string v1, "Switch3GPolicyDefault"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowedSwitch3GSlots nRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v0
.end method

.method public isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "ctx"
    .parameter "iccId3GSim"
    .parameter "id3GSim"
    .parameter "iccId1"
    .parameter "iccId2"

    .prologue
    const/4 v4, 0x1

    .line 55
    const/4 v0, -0x1

    .line 57
    .local v0, selected:I
    const-string v1, "Switch3GPolicyDefault"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select3GCapability (iccId3GSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id3GSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eqz p2, :cond_8

    if-eqz p3, :cond_0

    if-ne p3, v4, :cond_8

    .line 61
    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM1), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v0, 0x15

    .line 95
    :cond_1
    :goto_0
    return v0

    .line 64
    :cond_2
    if-ne p3, v4, :cond_3

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM2), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 v0, 0x15

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 70
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Need to switch 3G capability to SIM1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eq p3, v4, :cond_5

    .line 73
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Need to switch 3G capability to SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_5
    if-eqz p4, :cond_6

    if-nez p5, :cond_1

    .line 76
    :cond_6
    if-eqz p4, :cond_7

    if-eqz p3, :cond_7

    .line 77
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Need to switch 3G capability to the only SIM1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_7
    if-eqz p5, :cond_1

    if-eq p3, v4, :cond_1

    .line 80
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Need to switch 3G capability to the only SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x2

    goto :goto_0

    .line 85
    :cond_8
    if-nez p2, :cond_1

    if-eqz p3, :cond_9

    if-ne p3, v4, :cond_1

    .line 87
    :cond_9
    if-nez p4, :cond_1

    .line 88
    if-eqz p5, :cond_1

    .line 89
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Need to switch 3G capability to the only SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x2

    goto :goto_0
.end method
