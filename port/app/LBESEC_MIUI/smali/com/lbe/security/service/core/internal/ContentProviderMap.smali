.class public Lcom/lbe/security/service/core/internal/ContentProviderMap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/core/internal/d;

    invoke-direct {v0}, Lcom/lbe/security/service/core/internal/d;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->c:Ljava/lang/String;

    iput p3, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
