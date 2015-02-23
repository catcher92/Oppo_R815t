.class Lcom/oppo/preference/OppoPreferenceFragment$2;
.super Ljava/lang/Object;
.source "OppoPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 132
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceFragment$2;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment$2;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    #getter for: Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oppo/preference/OppoPreferenceFragment;->access$100(Lcom/oppo/preference/OppoPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceFragment$2;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    #getter for: Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/oppo/preference/OppoPreferenceFragment;->access$100(Lcom/oppo/preference/OppoPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 136
    return-void
.end method
