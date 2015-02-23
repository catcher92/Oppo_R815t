.class Lcom/oppo/preference/OppoPreferenceFragment$3;
.super Ljava/lang/Object;
.source "OppoPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceFragment$3;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 368
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment$3;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    #getter for: Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/oppo/preference/OppoPreferenceFragment;->access$100(Lcom/oppo/preference/OppoPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, selectedItem:Ljava/lang/Object;
    instance-of v2, v0, Lcom/oppo/preference/OppoPreference;

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment$3;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    #getter for: Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/oppo/preference/OppoPreferenceFragment;->access$100(Lcom/oppo/preference/OppoPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, selectedView:Landroid/view/View;
    check-cast v0, Lcom/oppo/preference/OppoPreference;

    .end local v0           #selectedItem:Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Lcom/oppo/preference/OppoPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 373
    .end local v1           #selectedView:Landroid/view/View;
    :goto_0
    return v2

    .restart local v0       #selectedItem:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
