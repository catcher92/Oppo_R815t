.class Lcom/oppo/preference/OppoPreferenceFragment$1;
.super Landroid/os/Handler;
.source "OppoPreferenceFragment.java"


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
    .line 119
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceFragment$1;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment$1;->this$0:Lcom/oppo/preference/OppoPreferenceFragment;

    #calls: Lcom/oppo/preference/OppoPreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Lcom/oppo/preference/OppoPreferenceFragment;->access$000(Lcom/oppo/preference/OppoPreferenceFragment;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
