.class Lcom/oppo/widget/OppoSearchViewAnim$3;
.super Ljava/lang/Object;
.source "OppoSearchViewAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 355
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$3;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$3;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/android/internal/app/OppoActionBarImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$3;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$700(Lcom/oppo/widget/OppoSearchViewAnim;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$3;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/android/internal/app/OppoActionBarImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->show()V

    .line 361
    :cond_0
    return-void
.end method
