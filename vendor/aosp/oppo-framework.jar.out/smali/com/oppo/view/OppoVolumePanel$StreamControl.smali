.class Lcom/oppo/view/OppoVolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "OppoVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/OppoVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/OppoSeekBar;

.field streamTitle:Landroid/widget/TextView;

.field streamType:I

.field final synthetic this$0:Lcom/oppo/view/OppoVolumePanel;


# direct methods
.method private constructor <init>(Lcom/oppo/view/OppoVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->this$0:Lcom/oppo/view/OppoVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/view/OppoVolumePanel;Lcom/oppo/view/OppoVolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel$StreamControl;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    return-void
.end method
