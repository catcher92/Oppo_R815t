.class Lcom/oppo/widget/OppoOptionMenuBar$4;
.super Landroid/os/Handler;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1509
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1520
    :goto_0
    return-void

    .line 1513
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #calls: Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V

    goto :goto_0

    .line 1509
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
