.class Lcom/oppo/widget/OppoSearchViewAnim$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoSearchViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchViewAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchViewAnim;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchViewAnim;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$5;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$5;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$202(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 417
    return-void
.end method
