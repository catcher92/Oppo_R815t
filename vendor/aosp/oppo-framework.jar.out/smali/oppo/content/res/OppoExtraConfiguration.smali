.class public Loppo/content/res/OppoExtraConfiguration;
.super Ljava/lang/Object;
.source "OppoExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field public mThemeChanged:I

.field public mThemeChangedFlags:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "OppoExtraConfiguration"

    iput-object v0, p0, Loppo/content/res/OppoExtraConfiguration;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoExtraConfiguration;->DEBUG:Z

    .line 37
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .parameter "i"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, flag:Z
    const/high16 v1, 0x800

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/high16 v1, 0x900

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 40
    check-cast p1, Loppo/content/res/OppoExtraConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Loppo/content/res/OppoExtraConfiguration;->compareTo(Loppo/content/res/OppoExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 3
    .parameter "extraconfiguration"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, i:I
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    sub-int v0, v1, v2

    .line 46
    return v0
.end method

.method public diff(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .parameter "extraconfiguration"

    .prologue
    const/high16 v3, 0x800

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, i:I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 88
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 89
    or-int/2addr v0, v3

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    const/high16 v1, 0x900

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, i:I
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 120
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 115
    return-void
.end method

.method public setTo(Loppo/content/res/OppoExtraConfiguration;)V
    .locals 2
    .parameter "extraconfiguration"

    .prologue
    .line 50
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 51
    iget-wide v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 52
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, stringbuilder:Ljava/lang/StringBuilder;
    const-string v1, "mThemeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "mThemeChangedFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .parameter "extraconfiguration"

    .prologue
    const/high16 v3, 0x800

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, i:I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 72
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 73
    or-int/2addr v0, v3

    .line 78
    :goto_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 79
    iget-wide v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 81
    :cond_0
    return v0

    .line 75
    :cond_1
    const/high16 v1, 0x900

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 108
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    return-void
.end method
