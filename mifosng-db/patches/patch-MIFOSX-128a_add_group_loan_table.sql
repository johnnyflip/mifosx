DROP TABLE IF EXISTS `m_group_loan`;
CREATE TABLE `m_group_loan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `external_id` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `fund_id` bigint(20) DEFAULT NULL,
  `loan_officer_id` bigint(20) DEFAULT NULL,
  `loan_status_id` smallint(5) NOT NULL,

  `term_frequency` smallint(5) NOT NULL DEFAULT 0,
  `term_period_frequency_enum` smallint(5) NOT NULL DEFAULT 2,

  `submittedon_date` datetime DEFAULT NULL,
  `approvedon_date` datetime DEFAULT NULL,
  `expected_disbursedon_date` date DEFAULT NULL,
  `expected_firstrepaymenton_date` date DEFAULT NULL,
  `interest_calculated_from_date` date DEFAULT NULL,
  `disbursedon_date` date DEFAULT NULL,
  `expected_maturedon_date` date DEFAULT NULL,
  `maturedon_date` date DEFAULT NULL,
  `closedon_date` datetime DEFAULT NULL,
  `rejectedon_date` datetime DEFAULT NULL,
  `rescheduledon_date` datetime DEFAULT NULL,
  `withdrawnon_date` datetime DEFAULT NULL,
  `writtenoffon_date` datetime DEFAULT NULL,
  `createdby_id` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `lastmodified_date` datetime DEFAULT NULL,
  `lastmodifiedby_id` bigint(20) DEFAULT NULL,
  `loan_transaction_strategy_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`external_id`),
  KEY (`product_id`),
  KEY (`fund_id`),
  KEY (`loan_transaction_strategy_id`),
  KEY (`loan_officer_id`),
  FOREIGN KEY (`group_id`) REFERENCES `m_group` (`id`),
  FOREIGN KEY (`fund_id`) REFERENCES `m_fund` (`id`),
  FOREIGN KEY (`product_id`) REFERENCES `m_product_loan` (`id`),
  FOREIGN KEY (`loan_transaction_strategy_id`) REFERENCES `ref_loan_transaction_processing_strategy` (`id`),
  FOREIGN KEY (`loan_officer_id`) REFERENCES `m_staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8