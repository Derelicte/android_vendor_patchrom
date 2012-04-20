.class public Lcom/lbe/security/service/privacy/QueryFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:[I

.field public b:[I

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/privacy/n;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/n;-><init>()V

    sput-object v0, Lcom/lbe/security/service/privacy/QueryFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[ILjava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    iput-object p2, p0, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    iput-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    iput-object p3, p0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
