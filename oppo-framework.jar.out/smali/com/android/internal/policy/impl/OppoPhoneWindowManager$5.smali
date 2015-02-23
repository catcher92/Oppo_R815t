.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1321
    return-void
.end method
