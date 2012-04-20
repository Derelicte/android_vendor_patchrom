.class public Lcom/android/updater/customTypes/FullUpdateInfo;
.super Ljava/lang/Object;
.source "FullUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/updater/customTypes/FullUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25be8c40f17ab62dL


# instance fields
.field public incrementalRoms:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public latestVersion:Lcom/android/updater/customTypes/UpdateInfo;

.field public roms:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public signInRank:Ljava/lang/String;

.field public signInTotal:Ljava/lang/String;

.field public signInVersion:Ljava/lang/String;

.field public userLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/updater/customTypes/FullUpdateInfo$1;

    invoke-direct {v0}, Lcom/android/updater/customTypes/FullUpdateInfo$1;-><init>()V

    sput-object v0, Lcom/android/updater/customTypes/FullUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/updater/customTypes/FullUpdateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/updater/customTypes/FullUpdateInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/updater/customTypes/FullUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getLatestVersion()Lcom/android/updater/customTypes/UpdateInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->latestVersion:Lcom/android/updater/customTypes/UpdateInfo;

    return-object v0
.end method

.method public getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, updateInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    iget-object v1, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    new-instance v1, Lcom/android/updater/customTypes/FullUpdateInfo$2;

    invoke-direct {v1, p0}, Lcom/android/updater/customTypes/FullUpdateInfo$2;-><init>(Lcom/android/updater/customTypes/FullUpdateInfo;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/updater/customTypes/UpdateInfo;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->userLevel:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInRank:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInTotal:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInVersion:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/updater/customTypes/UpdateInfo;

    iput-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->latestVersion:Lcom/android/updater/customTypes/UpdateInfo;

    .line 74
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 75
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "FullUpdateInfo"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->userLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInRank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInTotal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->latestVersion:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 66
    return-void
.end method
