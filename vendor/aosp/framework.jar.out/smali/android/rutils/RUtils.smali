.class public Landroid/rutils/RUtils;
.super Landroid/oppoutils/OppoUtils;
.source "RUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/oppoutils/OppoUtils;-><init>()V

    return-void
.end method

.method public static RUtilsChmod(Ljava/lang/String;I)I
    .locals 1
    .parameter "path"
    .parameter "mod"

    .prologue
    .line 27
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->Chmod(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static RUtilsChmod(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "path"
    .parameter "mod"
    .parameter "packageName"

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Landroid/oppoutils/OppoUtils;->Chmod(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartConfigItemClrFlagOps(ZI)I
    .locals 1
    .parameter "read"
    .parameter "source"

    .prologue
    .line 57
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->CustPartConfigItemClrFlagOps(ZI)I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartConfigItemUsbOps(ZII)I
    .locals 1
    .parameter "read"
    .parameter "value"
    .parameter "voter"

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Landroid/oppoutils/OppoUtils;->CustPartConfigItemUsbOps(ZII)I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartCustPartCalibrateGsensorData()[I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartCalibrateGsensorData()[I

    move-result-object v0

    return-object v0
.end method

.method public static RUtilsCustPartCustPartClearRebootNumber()I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartClearRebootNumber()I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartCustPartGetMcpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartGetMcpId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RUtilsCustPartCustPartGetRebootNumber()I
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartGetRebootNumber()I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartCustPartGetRebootReason()I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartGetRebootReason()I

    move-result v0

    return v0
.end method

.method public static RUtilsCustPartCustPartRecoverGsensorData()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/oppoutils/OppoUtils;->CustPartCustPartRecoverGsensorData()I

    move-result v0

    return v0
.end method

.method public static RUtilsGetPidByName(Ljava/lang/String;)I
    .locals 1
    .parameter "processName"

    .prologue
    .line 35
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->GetPidByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static RUtilsSetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->SetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static RUtilsSetSystemPropertiesStringInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 39
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->SetSystemPropertiesStringInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
