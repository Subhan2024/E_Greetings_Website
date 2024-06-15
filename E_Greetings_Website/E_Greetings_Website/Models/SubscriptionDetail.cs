using System;
using System.Collections.Generic;

namespace E_Greetings_Website.Models;

public partial class SubscriptionDetail
{
    public int SubscriptionId { get; set; }

    public int? UserId { get; set; }

    public DateTime SubscriptionStartDate { get; set; }

    public DateTime SubscriptionEndDate { get; set; }

    public string PaymentStatus { get; set; } = null!;

    public virtual User? User { get; set; }
}
