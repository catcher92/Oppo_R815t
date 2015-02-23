.class Lcom/oppo/preference/OppoMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "OppoMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/preference/OppoMultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoMultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    #getter for: Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$200(Lcom/oppo/preference/OppoMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    #getter for: Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$100(Lcom/oppo/preference/OppoMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$076(Lcom/oppo/preference/OppoMultiSelectListPreference;I)Z

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    #getter for: Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$200(Lcom/oppo/preference/OppoMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoMultiSelectListPreference$1;->this$0:Lcom/oppo/preference/OppoMultiSelectListPreference;

    #getter for: Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$100(Lcom/oppo/preference/OppoMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/preference/OppoMultiSelectListPreference;->access$076(Lcom/oppo/preference/OppoMultiSelectListPreference;I)Z

    goto :goto_0
.end method
