.class public final Lcom/lbe/security/service/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/lbe/security/service/a/d;

    check-cast p2, Lcom/lbe/security/service/a/d;

    invoke-virtual {p1}, Lcom/lbe/security/service/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lbe/security/service/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
