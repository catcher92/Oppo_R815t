.class Lcom/oppo/app/OppoListActivity$2;
.super Ljava/lang/Object;
.source "OppoListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/oppo/app/OppoListActivity$2;->this$0:Lcom/oppo/app/OppoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity$2;->this$0:Lcom/oppo/app/OppoListActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/app/OppoListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 171
    return-void
.end method