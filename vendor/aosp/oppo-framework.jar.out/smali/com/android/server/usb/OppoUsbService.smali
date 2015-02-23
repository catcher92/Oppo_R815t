.class public Lcom/android/server/usb/OppoUsbService;
.super Lcom/android/server/usb/UsbService;
.source "OppoUsbService.java"

# interfaces
.implements Landroid/hardware/usb/IOppoUsbManager;


# instance fields
.field private mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/server/usb/OppoUsbManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v0, p1, v1}, Lcom/android/server/usb/OppoUsbManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, p0, Lcom/android/server/usb/OppoUsbService;->mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getUsbSeletcedType()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbService;->mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;

    invoke-virtual {v0}, Lcom/android/server/usb/OppoUsbManager;->getUsbSeletcedType()I

    move-result v0

    return v0
.end method

.method public isUmsProcessing()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbService;->mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;

    invoke-virtual {v0}, Lcom/android/server/usb/OppoUsbManager;->isUmsProcessing()Z

    move-result v0

    return v0
.end method

.method public isUsbConnected()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbService;->mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;

    invoke-virtual {v0}, Lcom/android/server/usb/OppoUsbManager;->isUsbConnected()Z

    move-result v0

    return v0
.end method

.method public isUsbSelectionProcessing()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbService;->mOppoUsbManager:Lcom/android/server/usb/OppoUsbManager;

    invoke-virtual {v0}, Lcom/android/server/usb/OppoUsbManager;->isUsbSelectionProcessing()Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 41
    :pswitch_0
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/usb/OppoUsbService;->isUmsProcessing()Z

    move-result v1

    .line 43
    .local v1, isProcess:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v1           #isProcess:Z
    :pswitch_1
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/usb/OppoUsbService;->isUsbSelectionProcessing()Z

    move-result v1

    .line 51
    .restart local v1       #isProcess:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1           #isProcess:Z
    :pswitch_2
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/usb/OppoUsbService;->getUsbSeletcedType()I

    move-result v2

    .line 59
    .local v2, type:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v2           #type:I
    :pswitch_3
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/usb/OppoUsbService;->isUsbConnected()Z

    move-result v0

    .line 67
    .local v0, isConnect:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
