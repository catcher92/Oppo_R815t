.class Lcom/android/internal/app/OppoActionBarImpl$2;
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
    .line 127
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationCancel(Landroid/animation/Animator;Z)V

    .line 132
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 136
    const-string v0, "OppoActionBarImpl"

    const-string v1, "doShow : onAnimationEnd"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$100(Lcom/android/internal/app/OppoActionBarImpl;Landroid/animation/Animator;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 139
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationRepeat(Landroid/animation/Animator;Z)V

    .line 144
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$2;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 149
    return-void
.end method
