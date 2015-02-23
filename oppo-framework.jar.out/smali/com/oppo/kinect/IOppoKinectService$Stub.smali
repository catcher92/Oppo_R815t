.class public abstract Lcom/oppo/kinect/IOppoKinectService$Stub;
.super Landroid/os/Binder;
.source "IOppoKinectService.java"

# interfaces
.implements Lcom/oppo/kinect/IOppoKinectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/kinect/IOppoKinectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/kinect/IOppoKinectService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.kinect.IOppoKinectService"

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_setparameter:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.oppo.kinect.IOppoKinectService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/kinect/IOppoKinectService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.oppo.kinect.IOppoKinectService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oppo/kinect/IOppoKinectService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oppo/kinect/IOppoKinectService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/oppo/kinect/IOppoKinectService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oppo/kinect/IOppoKinectService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.oppo.kinect.IOppoKinectService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.oppo.kinect.IOppoKinectService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/kinect/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/kinect/IRemoteServiceCallback;

    move-result-object v0

    .line 51
    .local v0, _arg0:Lcom/oppo/kinect/IRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/oppo/kinect/IOppoKinectService$Stub;->enable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Lcom/oppo/kinect/IRemoteServiceCallback;
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v3, "com.oppo.kinect.IOppoKinectService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 63
    .local v1, _arg1:[F
    invoke-virtual {p0, v0, v1}, Lcom/oppo/kinect/IOppoKinectService$Stub;->setparameter(I[F)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[F
    :sswitch_3
    const-string v3, "com.oppo.kinect.IOppoKinectService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/kinect/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/kinect/IRemoteServiceCallback;

    move-result-object v0

    .line 73
    .local v0, _arg0:Lcom/oppo/kinect/IRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/oppo/kinect/IOppoKinectService$Stub;->disable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
