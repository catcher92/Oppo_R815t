.class public interface abstract Landroid/hardware/usb/IOppoUsbManager;
.super Ljava/lang/Object;
.source "IOppoUsbManager.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field public static final GET_USB_SELECTED_TYPE_TRANSACTION:I = 0x2714

.field public static final IS_UMS_PROCESSING_TRANSACTION:I = 0x2712

.field public static final IS_USB_CONNECTED_TRANSACTION:I = 0x2715

.field public static final IS_USB_SELECTION_PROCESSING_TRANSACTION:I = 0x2713

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711


# virtual methods
.method public abstract getUsbSeletcedType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUmsProcessing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUsbConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUsbSelectionProcessing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
