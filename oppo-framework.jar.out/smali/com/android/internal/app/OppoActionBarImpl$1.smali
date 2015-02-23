.class Lcom/android/internal/app/OppoActionBarImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationCancel(Landroid/animation/Animator;Z)V

    .line 106
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 110
    const/4 v0, 0x1

    const-string v1, "OppoActionBarImpl"

    const-string v2, "doHide : onAnimationEnd"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$100(Lcom/android/internal/app/OppoActionBarImpl;Landroid/animation/Animator;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 114
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationRepeat(Landroid/animation/Animator;Z)V

    .line 124
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$1;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 119
    return-void
.end method
