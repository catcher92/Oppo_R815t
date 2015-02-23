.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->finishPostLayoutPolicyLw()I
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
    .line 1169
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardApkDone(ZZ)V

    .line 1172
    return-void
.end method
