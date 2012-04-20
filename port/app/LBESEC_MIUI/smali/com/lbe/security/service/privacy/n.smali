.class final Lcom/lbe/security/service/privacy/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/lbe/security/service/privacy/QueryFilter;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    iget-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    iput-object v3, v0, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    iget-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    iput-object v3, v0, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iput-object v3, v0, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/lbe/security/service/privacy/QueryFilter;

    return-object v0
.end method
