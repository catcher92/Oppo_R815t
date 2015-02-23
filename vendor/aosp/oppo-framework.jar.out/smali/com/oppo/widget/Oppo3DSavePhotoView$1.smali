.class Lcom/oppo/widget/Oppo3DSavePhotoView$1;
.super Ljava/lang/Object;
.source "Oppo3DSavePhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DSavePhotoView;->invokeOnAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DSavePhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$1;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$1;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$000(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;->onAnimationEnd()V

    .line 375
    return-void
.end method
