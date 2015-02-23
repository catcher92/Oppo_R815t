.class Lcom/oppo/app/OppoMultiListActivity$1;
.super Ljava/lang/Object;
.source "OppoMultiListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoMultiListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/app/OppoMultiListActivity;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoMultiListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/app/OppoMultiListActivity$1;->this$0:Lcom/oppo/app/OppoMultiListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/app/OppoMultiListActivity$1;->this$0:Lcom/oppo/app/OppoMultiListActivity;

    iget-object v0, v0, Lcom/oppo/app/OppoMultiListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    iget-object v1, p0, Lcom/oppo/app/OppoMultiListActivity$1;->this$0:Lcom/oppo/app/OppoMultiListActivity;

    iget-object v1, v1, Lcom/oppo/app/OppoMultiListActivity;->mList:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 60
    return-void
.end method
