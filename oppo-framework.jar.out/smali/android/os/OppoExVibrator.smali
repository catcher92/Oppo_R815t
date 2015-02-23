.class public Landroid/os/OppoExVibrator;
.super Ljava/lang/Object;
.source "OppoExVibrator.java"

# interfaces
.implements Landroid/os/IOppoExVibrator;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOppoExVibrator"

.field private static final TAG:Ljava/lang/String; = "OppoExVibrator"


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OppoExVibrator;->mRemote:Landroid/os/IBinder;

    .line 22
    const-string v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OppoExVibrator;->mRemote:Landroid/os/IBinder;

    .line 23
    return-void
.end method


# virtual methods
.method public vibrateNotCheck(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v2, "OppoExVibrator"

    const-string v3, "OppoExVibrator setSecureController code=10002"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 33
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.os.IOppoExVibrator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 35
    iget-object v2, p0, Landroid/os/OppoExVibrator;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2712

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-void
.end method