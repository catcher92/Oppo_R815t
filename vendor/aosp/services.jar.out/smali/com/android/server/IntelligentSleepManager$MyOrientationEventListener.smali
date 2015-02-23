.class Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "IntelligentSleepManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntelligentSleepManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IntelligentSleepManager;


# direct methods
.method public constructor <init>(Lcom/android/server/IntelligentSleepManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->this$0:Lcom/android/server/IntelligentSleepManager;

    .line 210
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 211
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->this$0:Lcom/android/server/IntelligentSleepManager;

    #calls: Lcom/android/server/IntelligentSleepManager;->roundOrientation(I)I
    invoke-static {v0, p1}, Lcom/android/server/IntelligentSleepManager;->access$300(Lcom/android/server/IntelligentSleepManager;I)I

    move-result p1

    .line 220
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->this$0:Lcom/android/server/IntelligentSleepManager;

    #setter for: Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I
    invoke-static {v0, p1}, Lcom/android/server/IntelligentSleepManager;->access$402(Lcom/android/server/IntelligentSleepManager;I)I

    .line 222
    return-void
.end method
