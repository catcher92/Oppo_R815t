.class Landroid/bluetooth/BluetoothTetheringDataTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTetheringDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    const-string v2, "android.bluetooth.BluetoothTetheringDataTracker.EXTRA_INTERFACE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, iface:Ljava/lang/String;
    const-string v2, "BluetoothTethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "android.bluetooth.BluetoothTetheringDataTracker.ACTION_START_REVERSE_TETHER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 107
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Ljava/lang/String;)V

    .line 111
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v2, "android.bluetooth.BluetoothTetheringDataTracker.ACTION_STOP_REVERSE_TETHER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    goto :goto_0
.end method
