.class Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/sound/RingerVolumeActivity$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25be8c40f17ab62eL


# instance fields
.field private mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeActivity;->access$200()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeActivity;->access$200()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 259
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 260
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 0
    .parameter "volumeStore"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 253
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method getVolumeStore(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 274
    :cond_0
    new-array v1, p1, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeActivity;->access$200()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method
