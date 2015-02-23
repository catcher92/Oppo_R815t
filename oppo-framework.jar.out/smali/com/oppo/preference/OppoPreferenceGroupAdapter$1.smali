.class Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "OppoPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoPreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoPreferenceGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;->this$0:Lcom/oppo/preference/OppoPreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;->this$0:Lcom/oppo/preference/OppoPreferenceGroupAdapter;

    #calls: Lcom/oppo/preference/OppoPreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->access$100(Lcom/oppo/preference/OppoPreferenceGroupAdapter;)V

    .line 98
    return-void
.end method
