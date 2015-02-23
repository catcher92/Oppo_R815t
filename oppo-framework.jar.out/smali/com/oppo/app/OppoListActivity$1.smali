.class Lcom/oppo/app/OppoListActivity$1;
.super Ljava/lang/Object;
.source "OppoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/app/OppoListActivity;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/app/OppoListActivity$1;->this$0:Lcom/oppo/app/OppoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity$1;->this$0:Lcom/oppo/app/OppoListActivity;

    iget-object v0, v0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    iget-object v1, p0, Lcom/oppo/app/OppoListActivity$1;->this$0:Lcom/oppo/app/OppoListActivity;

    iget-object v1, v1, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 60
    return-void
.end method
