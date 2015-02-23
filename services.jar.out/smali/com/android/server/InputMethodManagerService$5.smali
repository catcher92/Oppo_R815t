.class Lcom/android/server/InputMethodManagerService$5;
.super Ljava/lang/Thread;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2066
    :try_start_0
    const-string v0, "InputMethodManagerService"

    const-string v1, "The IME thread sleep 300ms, and then show ime!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService$5;->sleep(J)V

    .line 2068
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    :goto_0
    return-void

    .line 2069
    :catch_0
    move-exception v0

    goto :goto_0
.end method
