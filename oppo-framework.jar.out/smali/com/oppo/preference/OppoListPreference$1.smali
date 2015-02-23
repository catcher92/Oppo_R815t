.class Lcom/oppo/preference/OppoListPreference$1;
.super Ljava/lang/Object;
.source "OppoListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/preference/OppoListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoListPreference;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/oppo/preference/OppoListPreference$1;->this$0:Lcom/oppo/preference/OppoListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference$1;->this$0:Lcom/oppo/preference/OppoListPreference;

    #setter for: Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/oppo/preference/OppoListPreference;->access$002(Lcom/oppo/preference/OppoListPreference;I)I

    .line 243
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference$1;->this$0:Lcom/oppo/preference/OppoListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/preference/OppoDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 245
    return-void
.end method
