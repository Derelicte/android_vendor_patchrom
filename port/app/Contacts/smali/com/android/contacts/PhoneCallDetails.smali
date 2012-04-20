.class public Lcom/android/contacts/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final callTypes:[I

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJ)V
    .locals 15
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"

    .prologue
    .line 64
    const-string v10, ""

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 74
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 75
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    .line 78
    iput-wide p6, p0, Lcom/android/contacts/PhoneCallDetails;->date:J

    .line 79
    iput-wide p8, p0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    .line 80
    iput-object p10, p0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 81
    iput p11, p0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    .line 82
    iput-object p12, p0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 83
    iput-object p13, p0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 84
    iput-object p14, p0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 85
    return-void
.end method
