.class final enum Lcom/oppo/view/OppoVolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "OppoVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/OppoVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/view/OppoVolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum FMStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const v12, 0xc04048e

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0xc04048a

    const v5, 0xc080467

    const v6, 0xc080469

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 159
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0xc04048b

    const v8, 0xc080087

    const v9, 0xc080083

    move v5, v11

    move v6, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 164
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0xc04048c

    const v8, 0xc080468

    const v9, 0xc080468

    move v5, v13

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 169
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const/4 v6, 0x4

    const v7, 0xc04048d

    const v8, 0xc080089

    const v9, 0xc080085

    move v5, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 174
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x4

    const v8, 0xc0800d3

    const v9, 0xc0800d4

    move v6, v14

    move v7, v12

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 179
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const v7, 0xc04048f

    const v8, 0xc080088

    const v9, 0xc080084

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 184
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/4 v5, 0x6

    const/16 v6, 0xa

    const v8, 0xc0800d3

    const v9, 0xc0800d4

    move v7, v12

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->FMStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 190
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/4 v5, 0x7

    const/16 v6, -0x64

    const v8, 0xc080086

    const v9, 0xc080082

    move v7, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 195
    new-instance v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/16 v5, 0x8

    const/16 v6, -0xc8

    const v8, 0xc08048a

    const v9, 0xc08048b

    move v7, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/oppo/view/OppoVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 153
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/view/OppoVolumePanel$StreamResources;

    sget-object v1, Lcom/oppo/view/OppoVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oppo/view/OppoVolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Lcom/oppo/view/OppoVolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->FMStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->$VALUES:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->streamType:I

    .line 210
    iput p4, p0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->descRes:I

    .line 211
    iput p5, p0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->iconRes:I

    .line 212
    iput p6, p0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->iconMuteRes:I

    .line 213
    iput-boolean p7, p0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->show:Z

    .line 214
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/view/OppoVolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 153
    const-class v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/oppo/view/OppoVolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/oppo/view/OppoVolumePanel$StreamResources;->$VALUES:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/view/OppoVolumePanel$StreamResources;

    return-object v0
.end method
