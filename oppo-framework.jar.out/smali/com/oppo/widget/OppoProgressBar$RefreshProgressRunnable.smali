.class Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "OppoProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/oppo/widget/OppoProgressBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput p2, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mId:I

    .line 595
    iput p3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 596
    iput-boolean p4, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 597
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mFromUser:Z

    const/4 v4, 0x1

    #calls: Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoProgressBar;->access$000(Lcom/oppo/widget/OppoProgressBar;IIZZ)V

    .line 602
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    #setter for: Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/oppo/widget/OppoProgressBar;->access$102(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;)Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    .line 603
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 606
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mId:I

    .line 607
    iput p2, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 608
    iput-boolean p3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 609
    return-void
.end method
