.class Lcom/oppo/preference/OppoPreferenceActivity$2;
.super Ljava/lang/Object;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/preference/OppoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity$2;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$2;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 683
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$2;->this$0:Lcom/oppo/preference/OppoPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 684
    return-void
.end method
